local autocmd = vim.api.nvim_create_autocmd

-- user event that loads after UIEnter + only if file buf is there
autocmd({ "UIEnter", "BufReadPost", "BufNewFile" }, {
  group = vim.api.nvim_create_augroup("VimFilePost", { clear = true }),
  callback = function(args)
    local file = vim.api.nvim_buf_get_name(args.buf)
    local buftype = vim.api.nvim_get_option_value("buftype", { buf = args.buf })

    if not vim.g.ui_entered and args.event == "UIEnter" then
      vim.g.ui_entered = true
    end

    if file ~= "" and buftype ~= "nofile" and vim.g.ui_entered then
      vim.api.nvim_exec_autocmds("User", { pattern = "FilePost", modeline = false })
      vim.api.nvim_del_augroup_by_name "VimFilePost"

      vim.schedule(function()
        vim.api.nvim_exec_autocmds("FileType", {})

        if vim.g.editorconfig then
          require("editorconfig").config(args.buf)
        end
      end)
    end
  end,
})


-- vim.api.nvim_create_autocmd("VimEnter", {
--   callback = function()
--     -- Open an empty buffer
--     vim.cmd("enew")
--     vim.bo.bufhidden = "wipe"
--
--     -- Disable UI elements for a clean look
--     vim.wo.number = false
--     vim.wo.relativenumber = false
--     vim.wo.cursorline = false
--     vim.wo.signcolumn = "no"
--     vim.wo.statusline = ""
--     vim.opt_local.list = false
--
--     -- Disable modified flag
--     vim.bo.modified = false
--     vim.bo.readonly = true
--     vim.bo.buftype = "nofile"
--
--     -- Set your dashboard content
--     local lines = {
--       "  ███╗   ██╗███████╗██╗   ██╗ █████╗ ██╗███╗   ███╗",
--       "  ████╗  ██║██╔════╝██║   ██║██╔══██╗██║████╗ ████║",
--       "  ██╔██╗ ██║█████╗  ██║   ██║███████║██║██╔████╔██║",
--       "  ██║╚██╗██║██╔══╝  ╚██╗ ██╔╝██╔══██║██║██║╚██╔╝██║",
--       "  ██║ ╚████║███████╗ ╚████╔╝ ██║  ██║██║██║ ╚═╝ ██║",
--       "  ╚═╝  ╚═══╝╚══════╝  ╚═══╝  ╚═╝  ╚═╝╚═╝╚═╝     ╚═╝",
--       "",
--       "  [n] New File    [f] Find File    [q] Quit",
--     }
--     vim.api.nvim_buf_set_lines(0, 0, -1, false, lines)
--
--     -- Setup key mappings
--     vim.keymap.set("n", "n", ":enew<CR>", { buffer = true, silent = true })
--     vim.keymap.set("n", "f", ":Telescope find_files<CR>", { buffer = true, silent = true }) -- You can remove this if no Telescope
--     vim.keymap.set("n", "q", ":qa<CR>", { buffer = true, silent = true })
--   end,
-- })

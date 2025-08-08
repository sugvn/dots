return
  {
    'stevearc/oil.nvim',
    event="User FilePost",
    cmd="Oil",
    opts = {},
    config = function()
      require("oil").setup({
                columns={"icons",},
                win_options={
                    wrap=true,
                    signcolumn="yes",
                    cursorcolumn=false,
                },
                delete_to_trash=true,
                skip_confirm_for_simple_edits=true,
                prompt_save_on_select_new_entry = true,
                view_options={
                    show_hidden=true,
                },
                float={
                    max_width=100,
                    max_height=100,
                    -- padding=15,
                },
                keymaps = {
                    ["H"] = "actions.parent",
                    ["L"]="actions.select",
                },
      })
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "oil",
        callback = function()
          vim.keymap.set("n", "q", ":bd<CR>", { buffer = true, silent = true })
          vim.keymap.set("n", "Q", ":bd<CR>", { buffer = true, silent = true })
          local opts = { buffer = true, noremap = true }
          vim.keymap.set("n", "J", "<Nop>", opts)
          vim.keymap.set("n", "K", "<Nop>", opts)
          -- Remap for navigation
          vim.keymap.set("n", "J", "j", opts)
          vim.keymap.set("n", "K", "k", opts)
        end,
      })
    end,
  }


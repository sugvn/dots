--- lsps ---
local lsp_configs = {}
for _, f in pairs(vim.api.nvim_get_runtime_file('lsp/*.lua', true)) do
  local server_name = vim.fn.fnamemodify(f, ':t:r')
  table.insert(lsp_configs, server_name)
end
vim.lsp.enable(lsp_configs)

vim.diagnostic.config {
    severity_sort = true,
    float = { border = 'rounded', source = 'if_many' },
    underline = { severity = vim.diagnostic.severity.ERROR },
    signs=false,
    ---  signs =  {
    ---    text = {
    ---      [vim.diagnostic.severity.ERROR] = '󰅚 ',
    ---      [vim.diagnostic.severity.WARN] = '󰀪 ',
    ---      [vim.diagnostic.severity.INFO] = '󰋽 ',
    ---      [vim.diagnostic.severity.HINT] = '󰌶 ',
    ---    },
    ---  } or {},
    virtual_text = {
        source = 'if_many',
        spacing = 2,
        format = function(diagnostic)
            local diagnostic_message = {
                [vim.diagnostic.severity.ERROR] = diagnostic.message,
                [vim.diagnostic.severity.WARN] = diagnostic.message,
                [vim.diagnostic.severity.INFO] = diagnostic.message,
                [vim.diagnostic.severity.HINT] = diagnostic.message,
            }
            return diagnostic_message[diagnostic.severity]
        end,
    },
}

return {
        "vague2k/vague.nvim",
        enabled=false,
        lazy = false,    -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other plugins
        config = function()
                -- NOTE: you do not need to call setup if you don't want to.
                require("vague").setup({
                        transparent = false, -- don't set background
                        -- disable bold/italic globally in `style`
                        bold = false,
                        italic = true,
                        style = {
                                -- "none" is the same thing as default. But "italic" and "bold" are also valid options
                                boolean = "none",
                                number = "none",
                                float = "none",
                                error = "none",
                                comments = "italic",
                                conditionals = "none",
                                functions = "none",
                                headings = "none",
                                operators = "none",
                                strings = "none",
                                variables = "none",

                                -- keywords
                                keywords = "none",
                                keyword_return = "italic",
                                keywords_loop = "none",
                                keywords_label = "none",
                                keywords_exception = "none",

                                -- builtin
                                builtin_constants = "none",
                                builtin_functions = "none",
                                builtin_types = "none",
                                builtin_variables = "none",
                        },
                        -- plugin styles where applicable
                        -- make an issue/pr if you'd like to see more styling options!
                        plugins = {
                                cmp = {
                                        match = "none",
                                        match_fuzzy = "none",
                                },
                                dashboard = {
                                        footer = "none",
                                },
                                lsp = {
                                        diagnostic_error = "italic",
                                        diagnostic_hint = "none",
                                        diagnostic_info = "none",
                                        diagnostic_ok = "none",
                                        diagnostic_warn = "none",
                                },
                                neotest = {
                                        focused = "bold",
                                        adapter_name = "bold",
                                },
                                telescope = {
                                        match = "none",
                                },
                        },

                        -- Override highlights or add new highlights
                        on_highlights = function(highlights, colors) end,

                        -- Override colors
                        colors = {
                                bg = "#141415",
                                fg = "#cdcdcd",
                                floatBorder = "#878787",
                                line = "#252530",
                                comment = "#606079",
                                builtin = "#b4d4cf",
                                func = "#c48282",
                                -- string = "#85c1b9",
                                string="#d4a373",
                                number = "#7fa563",
                                property = "#c3c3d5",
                                constant = "#8f8fb8",
                                parameter = "#bb9dbd",
                                visual = "#333738",
                                error = "#d8647e",
                                warning = "#f3be7c",
                                hint = "#7e98e8",
                                operator = "#90a0b5",
                                -- operator = "#7fa563",
                                keyword = "#6e94b2",
                                type = "#9bb4bc",
                                search = "#405065",
                                plus = "#7fa563",
                                delta = "#f4b89c",
                        },
                })
                vim.cmd("colorscheme vague")
        end
}

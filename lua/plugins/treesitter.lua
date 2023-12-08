return {
    {
        'nvim-treesitter/nvim-treesitter',
        event = { 'BufReadPre', 'BufNewFile' },
        cmd = { 'TSInstallInfo', 'TSInstall' },
        config = function()
            local status_ok, treesitter = pcall(require, 'nvim-treesitter.configs')

            if not status_ok then
                return
            end

            treesitter.setup({
                -- ensure_installed = { 'lua', 'vim', 'python', 'markdown_inline', 'go' },
                sync_install = false,
                auto_install = false,
                ignore_install = {},
                highlight = {
                    enable = true
                },
                context_commentstring = {
                    enable = true,
                    autocmd = false
                },
                autopairs = {
                    enable = true
                },
                autotag = {
                    enable = true
                },
                indent = {
                    enable = true,
                    disable = { 'go' }
                }
            })
        end

    }
}

--require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
--    ensure_installed = { "javascript", "typescript", "c", "lua", "vim", "vimdoc", "query", },

    -- Install parsers synchronously (only applied to `ensure_installed`)
--    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
--    auto_install = true,

--    highlight = {
--        enable = true,

        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
--        additional_vim_regex_highlighting = false,
--    },
--}

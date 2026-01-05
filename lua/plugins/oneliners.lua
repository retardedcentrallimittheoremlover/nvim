return {
    -- Core Utilities
    'tpope/vim-fugitive',
    'mbbill/undotree',
    { 'kkoomen/vim-doge', build = ':call doge#install()' },
    
    -- Rust Specifics
    { 'mrcjkb/rustaceanvim', version = '^5', lazy = false },
    { 
        'saecki/crates.nvim', 
        event = { "BufRead Cargo.toml" },
        config = function() require('crates').setup() end 
    },
}

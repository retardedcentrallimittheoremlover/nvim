return {
	'mrcjkb/rustaceanvim',
	version = '^5', -- Aanbevolen voor Neovim 0.10+
	lazy = false,   -- Moet laden voor Rust bestanden
	config = function()
		vim.g.rustaceanvim = {
			server = {
				on_attach = function(client, bufnr)
					local opts = { buffer = bufnr, desc = "Run Rust project" }

					vim.keymap.set('n', '<leader>r', '<cmd>term cargo run<cr>', opts)

					vim.keymap.set('n', '<leader>t', function()
						vim.cmd('split | term cd %:p:h && cargo test')
						vim.cmd('resize 10')
					end, { desc = 'Run tests for current file' })

					vim.keymap.set('n', '<leader>re', '<cmd>RustLsp explainError<cr>',
						{ buffer = bufnr, desc = "Explain Error" })
				end,
				default_settings = {
					['rust-analyzer'] = {
						checkOnSave = {
							command = "clippy", -- Betere checks dan standaard
						},
						inlayHints = {
							bindingModeHints = { enable = true },
							chainingHints = { enable = true },
							closingBraceHints = { enable = true },
							parameterHints = { enable = true },
							typeHints = { enable = true },
						},
					},
				},
			},
		}
	end
}

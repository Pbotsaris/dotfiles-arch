local wk = require("which-key")

 wk.setup {
  spelling = {enabled = true},
  window = {border = 'single'}
}

wk.register({
  w = {'<cmd>w!<cr>', 'save file'},
  q = {'<cmd>q!<cr>', 'quit'},
  ["."] = {'<Plug>(coc-codeaction)', 'show code actions'},
	rn = {'<Plug>(coc-rename)', 'rename'},
	l = {':CocCommand eslint.executeAutofix<CR>', 'eslint'},
	p = {':CocCommand prettier.formatFile<CR>', 'pretier'},
	f = {"<cmd>lua require('telescope.builtin').find_files()<CR>", 'Telescope files'},
	s = {"<cmd>lua require('telescope.builtin').git_files()<CR>", "Telescope Git Files"},
	z = {"<cmd>lua require('telescope').extensions.git_worktree.git_worktrees()<CR>", 'telescope worktree'},
	g = {"<cmd>lua require('telescope.builtin').live_grep()<CR>", "telescope grep"},
	b = {"<cmd>lua require('telescope.builtin').buffers()<CR>", "Telescope buffers"},
	n = {":Lexplore<CR> :vertical resize 30<CR>", 'Open explorer'},
	t = {":sp<CR> :term<CR> :resize 20N<CR> i", 'Open terminal'},
	v = {":vs<CR>", 'Vertical split'},
	h = {":sp<CR>", 'Horizontal split'}
 }
, { prefix = "<leader>" })







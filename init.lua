local Config = {}

Config.mappings = {
  n = {
    ['<TAB>'] = { cmd = ':Telescope buffers' },
    ['<C-h>'] = { cmd = '<C-w>h' },
    ['<C-j>'] = { cmd = '<C-w>j' },
    ['<C-k>'] = { cmd = '<C-w>k' },
    ['<C-l>'] = { cmd = '<C-w>l' },
    ['[['] = { cmd = ':lua vim.diagnostic.goto_prev()', desc = 'Previous error' },
    [']]'] = { cmd = ':lua vim.diagnostic.goto_next()', desc = 'Next error' },
    ['<leader>ss'] = { cmd = ':Telescope live_grep', desc = 'Search with live grep' },
    ['<leader>g'] = { cmd = ':Git', desc = '[G]it Dashboard' },
    ['<C-f>'] = { cmd = ':Telescope grep_string', desc = 'Search git files' },
    ['<C-p>'] = { cmd = ':Telescope git_files', desc = 'Search git files' },
    ['\\'] = { cmd = ':Telescope git_files', desc = 'Search git files' },
  },
  v = {
    ['<C-f>'] = { cmd = ':Telescope grep_string', desc = '[S]earch selected text' },
  },
}

for mode, mode_mappings in pairs(Config.mappings) do
  for key, mapping in pairs(mode_mappings) do
    vim.api.nvim_set_keymap(mode, key, mapping.cmd .. '<cr>', { noremap = true, silent = true, desc = mapping.desc })
  end
end

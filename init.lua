local Config = {}

Config.mappings = {
  n = {
    ['<leader>ss'] = { cmd = ':Telescope live_grep<cr>', desc = 'Search with live grep' },
    ['<C-f>'] = { cmd = ':Telescope git_files<cr>', desc = 'Search git files' },
    ['\\'] = { cmd = ':Telescope git_files<cr>', desc = 'Search git files' },
    ['<leader>su'] = { cmd = ':lua git_stashes()<cr>', desc = '[S]earch uncommitted' },
  },
}

for mode, mode_mappings in pairs(Config.mappings) do
  for key, mapping in pairs(mode_mappings) do
    vim.api.nvim_set_keymap(mode, key, mapping.cmd, { noremap = true, silent = true, desc = mapping.desc })
  end
end

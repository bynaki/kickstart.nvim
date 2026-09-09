-- 프로젝트의 가상환경을 골라 LSP를 그 인터프리터로 다시 붙인다.
-- 요구사항: fd(또는 fdfind)와 피커 플러그인(여기서는 kickstart의 telescope).
vim.pack.add {
  { src = 'https://github.com/linux-cultist/venv-selector.nvim' },
}

require('venv-selector').setup {
  options = {
    notify_user_on_venv_activation = true,
  },
}

vim.keymap.set('n', '<leader>cv', '<cmd>VenvSelect<cr>', { desc = '[C]hange [V]env' })

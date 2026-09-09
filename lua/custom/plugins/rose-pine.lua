-- 저장소 이름이 `neovim`이라, name을 주지 않으면 플러그인 디렉터리가 `neovim`이 되어
-- require 'rose-pine'이 실패한다.
vim.pack.add {
  { src = 'https://github.com/rose-pine/neovim', name = 'rose-pine' },
}

require('rose-pine').setup {
  variant = 'moon',
  highlight_groups = {
    -- 기본값은 본문 배경(#232136)보다 밝은 overlay라 어두운 쪽으로 뒤집는다.
    CursorLine = { bg = '#1f1e31' },
  },
}

vim.cmd.colorscheme 'rose-pine-moon'

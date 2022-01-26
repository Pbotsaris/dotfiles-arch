--vim.cmd([[
--  let g:gruvbox_material_palette = {
--          \ 'bg0':              ['#282828',   '234'],
--          \ 'bg1':              ['#262727',   '235'],
--          \ 'bg2':              ['#282828',   '235'],
--          \ 'bg3':              ['#3c3836',   '237'],
--          \ 'bg4':              ['#3c3836',   '237'],
--          \ 'bg5':              ['#504945',   '239'],
--          \ 'bg_statusline1':   ['#282828',   '235'],
--          \ 'bg_statusline2':   ['#32302f',   '235'],
--          \ 'bg_statusline3':   ['#504945',   '239'],
--          \ 'bg_diff_green':    ['#32361a',   '22'],
--          \ 'bg_visual_green':  ['#333e34',   '22'],
--          \ 'bg_diff_red':      ['#3c1f1e',   '52'],
--          \ 'bg_visual_red':    ['#442e2d',   '52'],
--          \ 'bg_diff_blue':     ['#0d3138',   '17'],
--          \ 'bg_visual_blue':   ['#2e3b3b',   '17'],
--          \ 'bg_visual_yellow': ['#473c29',   '94'],
--          \ 'bg_current_word':  ['#32302f',   '236'],
--          \ 'fg0':              ['#d4be98',   '223'],
--          \ 'fg1':              ['#ddc7a1',   '223'],
--          \ 'red':              ['#ea6962',   '167'],
--          \ 'orange':           ['#e78a4e',   '208'],
--          \ 'yellow':           ['#d8a657',   '214'],
--          \ 'green':            ['#a9b665',   '142'],
--          \ 'aqua':             ['#89b482',   '108'],
--          \ 'blue':             ['#7daea3',   '109'],
--          \ 'purple':           ['#d3869b',   '175'],
--          \ 'bg_red':           ['#ea6962',   '167'],
--          \ 'bg_green':         ['#a9b665',   '142'],
--          \ 'bg_yellow':        ['#d8a657',   '214'],
--          \ 'grey0':            ['#7c6f64',   '243'],
--          \ 'grey1':            ['#928374',   '245'],
--          \ 'grey2':            ['#a89984',   '246'],
--          \ 'none':             ['NONE',      'NONE']
--          \ }
--  ]])
--
--vim.g.gruvbox_material_background = 'medium'
--vim.g.gruvbox_material_enable_italic = 1
--vim.g.gruvbox_material_disable_italic_comment = 1

vim.o.background = "dark"

local nightfox = require('nightfox')
--print(vim.inspect(require('nightfox.colors').init()))

--  bg = "#2e3440",
--  bg_alt = "#232831",
--  bg_float = "#232831",
--  bg_highlight = "#3e4655",

nightfox.setup({
  fox = "nightfox", -- Which fox style should be applied
  transparent = false, -- Disable setting the background color
  alt_nc = true, -- Non current window bg to alt color see `hl-NormalNC`
  terminal_colors = true, -- Configure the colors used when opening :terminal
  styles = {
    comments = "italic", -- Style that is applied to comments: see `highlight-args` for options
    functions = "bold", -- Style that is applied to functions: see `highlight-args` for options
    keywords = "NONE", -- Style that is applied to keywords: see `highlight-args` for options
    strings = "NONE", -- Style that is applied to strings: see `highlight-args` for options
    variables = "NONE", -- Style that is applied to variables: see `highlight-args` for options
  },
  inverse = {
    match_paren = false, -- Enable/Disable inverse highlighting for match parens
    visual = false, -- Enable/Disable inverse highlighting for visual selection
    search = false, -- Enable/Disable inverse highlights for search highlights
  },
  colors = {
    bg = "#232831",
    bg_alt = "#2e3440"
  }, -- Override default colors
  hlgroups = {}, -- Override highlight groups
})



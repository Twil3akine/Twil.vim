local colors = {
  blue = "#8af",
  cyan = "#8ec",
  black = "#080808",
  white = "#c6c6c6",
  red = "#f59",
  violet = "#d8e",
  grey = "#333",
}

local bubbles_theme = {
  normal = {
    -- a = { fg = colors.black, bg = colors.violet },
    a = { fg = colors.white, bg = colors.violet },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.white },
  },

  -- insert = { a = { fg = colors.black, bg = colors.blue } },
  insert = { a = { fg = colors.white, bg = colors.blue } },
  -- visual = { a = { fg = colors.black, bg = colors.cyan } },
  visual = { a = { fg = colors.white, bg = colors.cyan } },
  -- replace = { a = { fg = colors.black, bg = colors.red } },
  replace = { a = { fg = colors.white, bg = colors.red } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.white },
  },
}

require('lualine').setup({
  options = {
    theme = bubbles_theme,
    component_separator = '',
    section_separator = { left = '', right = '' },
  },
  sections = {
    lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { '%=' },

    lualine_x = {},
    lualine_y = { 'filetype', 'progress' },
    lualine_z = { 
      { 'location', separator = { right = '' }, left_padding = 2 },
    },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensitions = {},
})
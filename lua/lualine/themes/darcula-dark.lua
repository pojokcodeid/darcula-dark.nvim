local color = require("palette")
return {
  normal = {
    a = { fg = color.silver_gray, bg = color.medium_gray },
    b = { fg = color.silver_gray, bg = color.background },
    c = { fg = color.light_slate_gray, bg = color.statusline },
  },

  insert = {
    a = { fg = color.background, bg = color.green },
    b = { fg = color.green, bg = color.background },
  },
  visual = {
    a = { fg = color.background, bg = color.bright_cyan },
    b = { fg = color.bright_cyan, bg = color.background },
  },
  replace = {
    a = { fg = color.background, bg = color.red },
    b = { fg = color.red, bg = color.background },
  },
  command = {
    a = { fg = color.background, bg = color.burnt_orange },
    b = { fg = color.burnt_orange, bg = color.background },
  },
  terminal = {
    a = { fg = color.background, bg = color.burnt_orange },
    b = { fg = color.burnt_orange, bg = color.background },
  },
  inactive = {
    a = { fg = color.silver_gray, bg = "NONE" },
    b = { fg = color.silver_gray, bg = "NONE" },
    c = { fg = color.silver_gray, bg = "NONE" },
  },
}

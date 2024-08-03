return {
  "NvChad/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      user_default_options = {
        RGB = true,
        RRGGBB = true,
        names = true,
        RRGGBBAA = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        mode = "background",
        tailwind = true,
      }
    })
  end,
}

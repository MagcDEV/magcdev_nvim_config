return {
	"eldritch-theme/eldritch.nvim",
	lazy = false,
	priority = 1000,
	opts = {},
  config = function()
    require("eldritch").setup({
      transparent = true, -- disables setting the background color.
    })
  end,
}

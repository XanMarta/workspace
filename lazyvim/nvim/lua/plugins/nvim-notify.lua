return {
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 100,
      max_width = function ()
        return math.floor(vim.o.columns * 0.5)
      end,
    },
  },
}

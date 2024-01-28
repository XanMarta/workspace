return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "float",
        mappings = {
          ["z"] = "close_node",
          ["Z"] = "close_all_nodes",
          ["e"] = "open",
          ["s"] = "open",
        }
      },
    },
  },
}

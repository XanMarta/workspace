return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "float",
        mappings = {
          ["z"] = "close_node",
          ["Z"] = "close_all_nodes",
          ["s"] = "open",
          ["e"] = "open_vsplit",
          ["E"] = "open_split",
          ["S"] = "none",
        }
      },
    },
  },
}

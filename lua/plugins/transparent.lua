return {
  "xiyaowong/transparent.nvim",
  opts = {
    extra_groups = {
      "NvimTreeNormal",
    },
    exclude_groups = {
      "NormalFloat",
      "FloatBorder",
      "WhichKeyFloat",
    },
  },
  config = function(_, opts)
    require("transparent").setup(opts)
    require("transparent").clear_prefix("BufferLine")
    -- require("transparent").clear_prefix("lualine")
    require("transparent").clear_prefix("NeoTree")
  end,
}

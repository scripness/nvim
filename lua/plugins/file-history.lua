return {
  "dawsers/file-history.nvim",
  dependencies = { "folke/snacks.nvim" },
  event = "BufReadPost",
  keys = {
    {
      "<leader>h",
      function()
        require("file_history").history()
      end,
      desc = "File History",
    },
  },
  config = function()
    require("file_history").setup({
      backup_dir = vim.fn.stdpath("data") .. "/file-history",
    })
  end,
}

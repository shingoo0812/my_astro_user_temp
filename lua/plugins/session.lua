return {
  "rmagatti/auto-session",
  config = function()
    require("auto-session").setup {
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      pre_save_cmds = { "NvimTreeClose" },
      save_extra_cmds = {
        "NvimTreeOpen",
      },
      post_restore_cmds = {
        "NvimTreeOpen",
      },
    }
  end,
}

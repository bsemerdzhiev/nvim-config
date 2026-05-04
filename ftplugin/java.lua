local home = os.getenv("HOME")
local jdtls = require("jdtls")

local workspace = home .. "/.local/share/jdtls-workspace/" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

local config = {
  cmd = {
    "jdtls",
  },
  root_dir = vim.fs.dirname(vim.fs.find({ "pom.xml", "build.gradle", ".git" }, { upward = true })[1]),
  workspace = workspace,
}

jdtls.start_or_attach(config)

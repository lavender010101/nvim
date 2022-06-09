-- local JAVA_PATH = '/opt/JDK/jdk-17.0.2'
-- local JDTLS_PATH = '$HOME/.local/share/nvim/lsp_servers/jdtls'
-- local VERSION_NUMBER = '1.6.400.v20210924-0641'
-- local SYSTEM = 'linux'
-- 
-- local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ':p:h:t')
-- local workspace_dir = '/path/to/workspace-root/' .. project_name

return {
--     cmd = {
--     -- 💀
--     JAVA_PATH..'/bin/java', -- or '/path/to/java11_or_newer/bin/java'
--             -- depends on if `java` is in your $PATH env variable and if it points to the right version.
-- 
--     '-Declipse.application=org.eclipse.jdt.ls.core.id1',
--     '-Dosgi.bundles.defaultStartLevel=4',
--     '-Declipse.product=org.eclipse.jdt.ls.core.product',
--     '-Dlog.protocol=true',
--     '-Dlog.level=ALL',
--     '-Xms1g',
--     '--add-modules=ALL-SYSTEM',
--     '--add-opens', 'java.base/java.util=ALL-UNNAMED',
--     '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
-- 
--     -- 💀
--     '-jar', JDTLS_PATH..'/plugins/org.eclipse.equinox.launcher_'..VERSION_NUMBER..'.jar',
--          -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^                                       ^^^^^^^^^^^^^^
--          -- Must point to the                                                     Change this to
--          -- eclipse.jdt.ls installation                                           the actual version
-- 
-- 
--     -- 💀
--     '-configuration', JDTLS_PATH..'/config_'..SYSTEM,
--                     -- ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^        ^^^^^^
--                     -- Must point to the                      Change to one of `linux`, `win` or `mac`
--                     -- eclipse.jdt.ls installation            Depending on your system.
-- 
-- 
--     -- 💀
--     -- See `data directory configuration` section in the README
--     '-data', workspace_dir
--     },
-- 
-- 
--   -- 💀
--   -- This is the default if not provided, you can remove it. Or adjust as needed.
--   -- One dedicated LSP server & client will be started per unique root_dir
--   root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
-- 
--   -- Here you can configure eclipse.jdt.ls specific settings
--   -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
--   -- for a list of options
  settings = {
    java = {
        home = "/opt/JDK/jdk-11.0.13.9/bin/java"
    }
  },

  -- Language server `initializationOptions`
  -- You need to extend the `bundles` with paths to jar files
  -- if you want to use additional eclipse.jdt.ls plugins.
  --
  -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
  --
  -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
--   init_options = {
--     bundles = {}
--   },
}

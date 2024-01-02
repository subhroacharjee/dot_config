return {
  "akinsho/flutter-tools.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "stevearc/dressing.nvim", -- optional for vim.ui.select
    "SmiteshP/nvim-navbuddy",
    "NvChad/nvim-colorizer.lua",
  },
  config = function()
    local navbuddy = require "nvim-navbuddy"
    require("colorizer").setup {
      filetypes = { "*" },
      user_default_options = {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = true, -- "Name" codes like Blue or blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        AARRGGBB = true, -- 0xAARRGGBB hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = false, -- CSS hsl() and hsla() functions
        css = false, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = false, -- Enable all CSS *functions*: rgb_fn, hsl_fn
        -- Available modes for `mode`: foreground, background,  virtualtext
        mode = "background", -- Set the display mode.
        -- Available methods are false / true / "normal" / "lsp" / "both"
        -- True is same as normal
        tailwind = false, -- Enable tailwind colors
        -- parsers can contain values used in |user_default_options|
        sass = { enable = false, parsers = { "css" } }, -- Enable sass colors
        virtualtext = "■",
        -- update color values even if buffer is not focused
        -- example use: cmp_menu, cmp_docs
        always_update = false,
      },
      -- all the sub-options of filetypes apply to buftypes
      buftypes = {},
    }
    require("flutter-tools").setup {
      ui = {
        -- the border type to use for all floating windows, the same options/formats
        -- used for ":h nvim_open_win" e.g. "single" | "shadow" | {<table-of-eight-chars>}
        border = "rounded",
        -- This determines whether notifications are show with `vim.notify` or with the plugin's custom UI
        -- please note that this option is eventually going to be deprecated and users will need to
        -- depend on plugins like `nvim-notify` instead.
        -- notification_style = 'vim.notify'
      },
      decorations = {
        statusline = {
          -- set to true to be able use the 'flutter_tools_decorations.app_version' in your statusline
          -- this will show the current version of the flutter app from the pubspec.yaml file
          -- app_version = false,
          -- set to true to be able use the 'flutter_tools_decorations.device' in your statusline
          -- this will show the currently running device if an application was started with a specific
          -- device
          device = true,
        },
      },
      debugger = { -- integrate with nvim dap + install dart code debugger
        enabled = true,
        run_via_dap = true, -- use dap instead of a plenary job to run flutter apps
        exception_breakpoints = { "raised", "uncaught" },
        register_configurations = function(_)
          require("dap").configurations.dart = {
            {
              type = "dart",
              request = "launch",
              name = "Launch Flutter Program",
              -- The nvim-dap plugin populates this variable with the filename of the current buffer
              program = "${file}",
              -- The nvim-dap plugin populates this variable with the editor's current working directory
              cwd = "${workspaceFolder}",
              toolArgs = { "-d", "chrome" },
              args = { "--web-port=5000" },
              deviceId = "chrome",
              flutterMode = "debug",
            },
          }
        end,
      },
      -- -- flutter_path = "<full/path/if/needed>", -- <-- this takes priority over the lookup
      -- -- flutter_lookup_cmd = nil, -- example "dirname $(which flutter)" or "asdf where flutter"
      fvm = true, -- takes priority over path, uses <workspace>/.fvm/flutter_sdk if enabled
      -- widget_guides = {
      --   enabled = true,
      -- },
      -- closing_tags = {
      --   highlight = "ErrorMsg", -- highlight for the closing tag
      --   prefix = ">", -- character to use for close tag e.g. > Widget
      --   enabled = true -- set to false to disable
      -- },
      dev_log = {
        enabled = true,
        open_cmd = "tabedit", -- command to use to open the log buffer
      },
      -- dev_tools = {
      --   autostart = false, -- autostart devtools server if not detected
      --   auto_open_browser = false, -- Automatically opens devtools in the browser
      -- },
      -- outline = {
      --   open_cmd = "30vnew", -- command to use to open the outline buffer
      --   auto_open = false -- if true this will open the outline automatically when it is first populated
      -- },
      lsp = {
        color = { -- show the derived colours for dart variables
          enabled = true, -- whether or not to highlight color variables at all, only supported on flutter >= 2.10
          background = false, -- highlight the background
          foreground = false, -- highlight the foreground
          virtual_text = true, -- show the highlight using virtual text
          virtual_text_str = "■", -- the virtual text character to highlight
        },
        on_attach = function(client, bufnr)
          -- navic.attach(client, bufnr)
          -- vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"
          navbuddy.attach(client, bufnr)
        end,
        -- capabilities = my_custom_capabilities -- e.g. lsp_status capabilities
        -- --- OR you can specify a function to deactivate or change or control how the config is created
        -- capabilities = function(config)
        --   config.specificThingIDontWant = false
        --   return config
        -- end,
        -- see the link below for details on each option:
        -- https://github.com/dart-lang/sdk/blob/master/pkg/analysis_server/tool/lsp_spec/README.md#client-workspace-configuration
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          onlyAnalyzeProjectsWithOpenFiles = true,
          analysisExcludedFolders = {
            vim.fn.expand "$HOME/flutter/.pub-cache",
          },
          renameFilesWithClasses = "always", -- "prompt"
          enableSnippets = true,
          lineLength = 100,
        },
      },
    }
  end,
}

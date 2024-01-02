-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = true
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/user/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/user/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  CamelCaseMotion = {
    config = { "\27LJ\2\n>\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\r<leader>\24camelcasemotion_key\6g\bvim\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/CamelCaseMotion",
    url = "https://github.com/bkad/CamelCaseMotion"
  },
  Colorizer = {
    config = { "\27LJ\2\nh\0\0\2\0\5\0\t6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0\31colorizer_disable_bufleave\blog\28colorizer_auto_filetype\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/Colorizer",
    url = "https://github.com/chrisbra/Colorizer"
  },
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    config = { "\27LJ\2\n7\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\25\0=\1\2\0K\0\1\0\26cursorhold_updatetime\6g\bvim\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    config = { "require('rm.plugins.luasnip')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["auto-save.nvim"] = {
    config = { "\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19debounce_delay\3à'\nsetup\14auto-save\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/auto-save.nvim",
    url = "https://github.com/Pocco81/auto-save.nvim"
  },
  ["bufresize.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14bufresize\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/bufresize.nvim",
    url = "https://github.com/kwkarlwang/bufresize.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-cmdline-history"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-cmdline-history",
    url = "https://github.com/dmitmel/cmp-cmdline-history"
  },
  ["cmp-git"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-git",
    url = "https://github.com/petertriho/cmp-git"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-document-symbol"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-document-symbol",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-document-symbol"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-rg"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-rg",
    url = "https://github.com/lukas-reineke/cmp-rg"
  },
  ["cmp-tmux"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp-tmux",
    url = "https://github.com/andersevenrud/cmp-tmux"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.lua"] = {
    config = { "require('rm.plugins.ai/copilot')" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/copilot.lua",
    url = "https://github.com/zbirenbaum/copilot.lua"
  },
  ["dart-vim-plugin"] = {
    config = { "\27LJ\2\nV\0\0\2\0\4\0\t6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\2\0=\1\3\0K\0\1\0\21dart_style_guide\24dart_format_on_save\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/dart-vim-plugin",
    url = "https://github.com/dart-lang/dart-vim-plugin"
  },
  ["dial.nvim"] = {
    config = { "require('rm.plugins.motion.dial')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/dial.nvim",
    url = "https://github.com/monaqa/dial.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\np\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\ninput\1\0\0\16win_options\1\0\0\1\0\1\rwinblend\3\0\nsetup\rdressing\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["dropbar.nvim"] = {
    config = { "require('rm.plugins.ui.winbar')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/dropbar.nvim",
    url = "https://github.com/Bekaboo/dropbar.nvim"
  },
  ["everforest-nvim"] = {
    after = { "lualine.nvim" },
    config = { "require('rm.plugins.ui.colorscheme')" },
    loaded = true,
    only_config = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/everforest-nvim",
    url = "https://github.com/rlch/everforest-nvim"
  },
  ["flutter-tools.nvim"] = {
    config = { "require('rm.plugins.lang.flutter-tools')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/flutter-tools.nvim",
    url = "https://github.com/akinsho/flutter-tools.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["git-conflict.nvim"] = {
    config = { "\27LJ\2\nñ\2\0\0\4\0\t\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\a\0=\3\b\2B\0\2\1K\0\1\0\15highlights\1\0\2\rincoming\25ConflictMarkerTheirs\fcurrent\23ConflictMarkerOurs\1\0\1\24disable_diagnostics\2\nsetup\17git-conflict\frequire]highlight ConflictMarkerOurs guibg=#2e5049\nhighlight ConflictMarkerTheirs guibg=#344f69\n\bcmd\bvim\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/git-conflict.nvim",
    url = "https://github.com/akinsho/git-conflict.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nc\0\0\3\0\a\0\v6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rgitsigns\frequire\vauto:1\15signcolumn\awo\bvim\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["go.nvim"] = {
    config = { "require('rm.plugins.lang.go')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/go.nvim",
    url = "https://github.com/ray-x/go.nvim"
  },
  ["gotests.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fgotests\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/gotests.nvim",
    url = "https://github.com/yanskun/gotests.nvim"
  },
  ["headlines.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14headlines\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/headlines.nvim",
    url = "https://github.com/lukas-reineke/headlines.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["inc-rename.nvim"] = {
    config = { "\27LJ\2\nt\0\0\5\0\t\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\nsetup\15inc_rename\frequire\16:IncRename \agr\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/inc-rename.nvim",
    url = "https://github.com/smjonas/inc-rename.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n \1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rfiletype\1\5\0\0\tyaml\vgotmpl\byml\fpubspec\1\0\4\25show_current_context\2\25use_treesitter_scope\2\19use_treesitter\2\31show_current_context_start\1\nsetup\21indent_blankline\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["iswap.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/iswap.nvim",
    url = "https://github.com/mizlan/iswap.nvim"
  },
  ["legendary.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/legendary.nvim",
    url = "https://github.com/mrjones2014/legendary.nvim"
  },
  ["lsp-inlayhints.nvim"] = {
    config = { "\27LJ\2\nÄ\3\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\16inlay_hints\1\0\0\15type_hints\1\0\5\23remove_colon_start\1\14separator\a, \vprefix\5\tshow\2\21remove_colon_end\1\20parameter_hints\1\0\6\14highlight\fComment\24right_align_padding\3\a\16right_align\1\26max_len_align_padding\3\1\18max_len_align\1\21labels_separator\a  \1\0\5\23remove_colon_start\1\14separator\a, \vprefix\b<- \tshow\1\21remove_colon_end\2\nsetup\19lsp-inlayhints\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/lsp-inlayhints.nvim",
    url = "https://github.com/lvimuser/lsp-inlayhints.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lualine.nvim"] = {
    config = { "require('rm.plugins.ui.statusline')" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  middleclass = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/middleclass",
    url = "https://github.com/anuvyklack/middleclass"
  },
  ["move.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["muren.nvim"] = {
    config = { "\27LJ\2\nø\3\0\0\5\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0B\0\4\1K\0\1\0\25<cmd>MurenToggle<cr>\15<leader>rs\6n\bset\vkeymap\bvim\tkeys\1\0\t\15do_replace\t<CR>\24scroll_preview_down\v<Down>\22scroll_preview_up\t<Up>\31toggle_option_under_cursor\t<CR>\25toggle_options_focus\n<C-k>\16toggle_side\n<Tab>\nclose\6q\fdo_redo\19<localleader>r\fdo_undo\19<localleader>u\1\0\6\19preview_height\3\f\18options_width\3\20\20patterns_height\3\n\19patterns_width\3\30\20create_commands\2\vanchor\vcenter\nsetup\nmuren\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/muren.nvim",
    url = "https://github.com/AckslD/muren.nvim"
  },
  ["neo-tree-diagnostics.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/neo-tree-diagnostics.nvim",
    url = "https://github.com/mrbjarksen/neo-tree-diagnostics.nvim"
  },
  ["neo-tree.nvim"] = {
    config = { "require('rm.plugins.workflow.neo-tree')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/neo-tree.nvim",
    url = "https://github.com/nvim-neo-tree/neo-tree.nvim"
  },
  ["neodev.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  neogen = {
    config = { "require('rm.plugins.workflow.neogen')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/neogen",
    url = "https://github.com/danymat/neogen"
  },
  neotest = {
    config = { "require('rm.plugins.lsp.neotest')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/neotest",
    url = "https://github.com/nvim-neotest/neotest"
  },
  ["neotest-go"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/neotest-go",
    url = "https://github.com/nvim-neotest/neotest-go"
  },
  ["neotest-vim-test"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/neotest-vim-test",
    url = "https://github.com/nvim-neotest/neotest-vim-test"
  },
  ["noice.nvim"] = {
    config = { "require('rm.plugins.ui.noice')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "require('rm.plugins.lsp.null-ls')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "require('rm.plugins.motion.pairs')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "copilot.lua" },
    config = { "require('rm.plugins.cmp')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\3\0\0\6*\n!dart\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-coverage"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcoverage\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-coverage",
    url = "https://github.com/andythigpen/nvim-coverage"
  },
  ["nvim-dap"] = {
    config = { "require('rm.plugins.lsp.dap')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lsp-ts-utils"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-lsp-ts-utils",
    url = "https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils"
  },
  ["nvim-lspconfig"] = {
    config = { "require('rm.plugins.lsp.lspconfig')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-navbuddy"] = {
    config = { "require('rm.plugins.lsp.navbuddy')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-navbuddy",
    url = "https://github.com/SmiteshP/nvim-navbuddy"
  },
  ["nvim-navic"] = {
    config = { "require('rm.plugins.lsp.navic')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-navic",
    url = "https://github.com/SmiteshP/nvim-navic"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\topen\fspectre\frequiren\1\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0003\4\b\0B\0\4\1K\0\1\0\0\15<leader>rr\6n\bset\vkeymap\bvim\nsetup\fspectre\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "https://github.com/nvim-pack/nvim-spectre"
  },
  ["nvim-spider"] = {
    config = { "\27LJ\2\nã\4\0\0\6\0\23\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0005\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\15\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\19\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\1\tdesc\14Spider-ge0<cmd>lua require('spider').motion('ge')<CR>\age\1\4\0\0\6n\6o\6x\1\0\1\tdesc\rSpider-b/<cmd>lua require('spider').motion('b')<CR>\6b\1\4\0\0\6n\6o\6x\1\0\1\tdesc\rSpider-e/<cmd>lua require('spider').motion('e')<CR>\6e\1\4\0\0\6n\6o\6x\1\0\1\tdesc\rSpider-w/<cmd>lua require('spider').motion('w')<CR>\6w\1\4\0\0\6n\6o\6x\bset\vkeymap\bvim\1\0\1!skipInsignificantPunctuation\2\nsetup\vspider\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-spider",
    url = "https://github.com/chrisgrieser/nvim-spider"
  },
  ["nvim-treesitter"] = {
    config = { "require('rm.plugins.treesitter')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ufo"] = {
    config = { "\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bufo\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-various-textobjs"] = {
    config = { "\27LJ\2\né\3\0\0\6\0\19\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0005\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\15\0'\3\16\0'\4\f\0B\0\4\0016\0\4\0009\0\5\0009\0\6\0005\2\17\0'\3\18\0'\4\b\0B\0\4\1K\0\1\0\aaW\1\3\0\0\6o\6x\aiW\1\3\0\0\6o\6x\1\0\1\nremap\1;<cmd>lua require(\"various-textobjs\").subword(true)<CR>\aiw\1\3\0\0\6o\6x\1\0\1\nremap\1<<cmd>lua require(\"various-textobjs\").subword(false)<CR>\aaw\1\3\0\0\6o\6x\bset\vkeymap\bvim\1\0\1\22useDefaultKeymaps\1\nsetup\21various-textobjs\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-various-textobjs",
    url = "https://github.com/chrisgrieser/nvim-various-textobjs"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["pounce.nvim"] = {
    config = { "\27LJ\2\nè\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\4\17multi_window\2\20accept_best_key\f<enter>\ndebug\1\16accept_keys\31JFKDLSAHGNUVRBYTMICEOXWPQZ\nsetup\vpounce\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/pounce.nvim",
    url = "https://github.com/rlane/pounce.nvim"
  },
  ["project.nvim"] = {
    config = { "require('rm.plugins.workflow.project')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["rust-tools.nvim"] = {
    config = { "require('rm.plugins.lang.rust-tools')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim",
    wants = { "nvim-lua/popup.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" }
  },
  ["sqls.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/sqls.nvim",
    url = "https://github.com/nanotee/sqls.nvim"
  },
  ["stabilize.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14stabilize\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/stabilize.nvim",
    url = "https://github.com/luukvbaal/stabilize.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "require('rm.plugins.workflow.telescope')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tint.nvim"] = {
    config = { "\27LJ\2\n€\1\0\1\6\0\t\0\0306\1\0\0009\1\1\0019\1\2\1\18\3\0\0B\1\2\0026\2\0\0009\2\1\0029\2\3\2\18\4\1\0'\5\4\0B\2\3\0026\3\0\0009\3\1\0039\3\5\3\18\5\0\0B\3\2\0029\3\6\3\a\3\a\0X\3\2Ä+\3\1\0X\4\1Ä+\3\2\0\6\2\b\0X\4\4Ä\18\4\3\0X\5\3Ä+\4\1\0X\5\1Ä+\4\2\0L\4\2\0\rterminal\5\rrelative\24nvim_win_get_config\fbuftype\24nvim_buf_get_option\21nvim_win_get_buf\bapi\bvimŒ\1\1\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0023\3\6\0=\3\a\2B\0\2\1K\0\1\0\27window_ignore_function\0\30highlight_ignore_patterns\1\3\0\0\17WinSeparator\rStatus.*\1\0\3\27tint_background_colors\2\15saturation\4Õô≥Ê\fÃô≥ˇ\3\ttint\3˛ˇˇˇ\15\nsetup\ttint\frequire\0" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/tint.nvim",
    url = "https://github.com/levouh/tint.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\ny\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\5\nicons\2\rposition\nright\25use_diagnostic_signs\2\nwidth\3-\vheight\3\n\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["ts-node-action"] = {
    config = { "require('rm.plugins.motion.ts-node-action')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/ts-node-action",
    url = "https://github.com/ckolkey/ts-node-action"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-abolish",
    url = "https://github.com/tpope/vim-abolish"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-dispatch-neovim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-dispatch-neovim",
    url = "https://github.com/radenling/vim-dispatch-neovim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-graphql"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-graphql",
    url = "https://github.com/jparise/vim-graphql"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-log-highlighting"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/vim-log-highlighting",
    url = "https://github.com/mtdl9/vim-log-highlighting"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-startuptime"] = {
    commands = { "StartupTime" },
    config = { "\27LJ\2\n|\0\0\2\0\5\0\t6\0\0\0009\0\1\0)\1\15\0=\1\2\0006\0\0\0009\0\1\0005\1\4\0=\1\3\0K\0\1\0\1\2\0\0$+let g:auto_session_enabled = 0\25startuptime_exe_args\22startuptime_tries\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/vim-startuptime",
    url = "https://github.com/dstein64/vim-startuptime"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-terraform"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-terraform",
    url = "https://github.com/hashivim/vim-terraform"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  },
  vimtex = {
    config = { "require('rm.plugins.lang.latex')" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/user/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["windows.nvim"] = {
    config = { "require('rm.plugins.workflow.windows')" },
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/windows.nvim",
    url = "https://github.com/anuvyklack/windows.nvim"
  },
  winresizer = {
    loaded = true,
    path = "/Users/user/.local/share/nvim/site/pack/packer/start/winresizer",
    url = "https://github.com/simeji/winresizer"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-navbuddy
time([[Config for nvim-navbuddy]], true)
require('rm.plugins.lsp.navbuddy')
time([[Config for nvim-navbuddy]], false)
-- Config for: nvim-ufo
time([[Config for nvim-ufo]], true)
try_loadstring("\27LJ\2\n1\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\bufo\frequire\0", "config", "nvim-ufo")
time([[Config for nvim-ufo]], false)
-- Config for: dial.nvim
time([[Config for dial.nvim]], true)
require('rm.plugins.motion.dial')
time([[Config for dial.nvim]], false)
-- Config for: rust-tools.nvim
time([[Config for rust-tools.nvim]], true)
require('rm.plugins.lang.rust-tools')
time([[Config for rust-tools.nvim]], false)
-- Config for: lsp-inlayhints.nvim
time([[Config for lsp-inlayhints.nvim]], true)
try_loadstring("\27LJ\2\nÄ\3\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\3=\3\t\2B\0\2\1K\0\1\0\16inlay_hints\1\0\0\15type_hints\1\0\5\23remove_colon_start\1\14separator\a, \vprefix\5\tshow\2\21remove_colon_end\1\20parameter_hints\1\0\6\14highlight\fComment\24right_align_padding\3\a\16right_align\1\26max_len_align_padding\3\1\18max_len_align\1\21labels_separator\a  \1\0\5\23remove_colon_start\1\14separator\a, \vprefix\b<- \tshow\1\21remove_colon_end\2\nsetup\19lsp-inlayhints\frequire\0", "config", "lsp-inlayhints.nvim")
time([[Config for lsp-inlayhints.nvim]], false)
-- Config for: auto-save.nvim
time([[Config for auto-save.nvim]], true)
try_loadstring("\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\19debounce_delay\3à'\nsetup\14auto-save\frequire\0", "config", "auto-save.nvim")
time([[Config for auto-save.nvim]], false)
-- Config for: FixCursorHold.nvim
time([[Config for FixCursorHold.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\2\0\3\0\0056\0\0\0009\0\1\0)\1\25\0=\1\2\0K\0\1\0\26cursorhold_updatetime\6g\bvim\0", "config", "FixCursorHold.nvim")
time([[Config for FixCursorHold.nvim]], false)
-- Config for: stabilize.nvim
time([[Config for stabilize.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14stabilize\frequire\0", "config", "stabilize.nvim")
time([[Config for stabilize.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('rm.plugins.treesitter')
time([[Config for nvim-treesitter]], false)
-- Config for: neogen
time([[Config for neogen]], true)
require('rm.plugins.workflow.neogen')
time([[Config for neogen]], false)
-- Config for: CamelCaseMotion
time([[Config for CamelCaseMotion]], true)
try_loadstring("\27LJ\2\n>\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\r<leader>\24camelcasemotion_key\6g\bvim\0", "config", "CamelCaseMotion")
time([[Config for CamelCaseMotion]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nc\0\0\3\0\a\0\v6\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rgitsigns\frequire\vauto:1\15signcolumn\awo\bvim\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: inc-rename.nvim
time([[Config for inc-rename.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\5\0\t\0\r6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0B\0\4\0016\0\6\0'\2\a\0B\0\2\0029\0\b\0B\0\1\1K\0\1\0\nsetup\15inc_rename\frequire\16:IncRename \agr\6n\bset\vkeymap\bvim\0", "config", "inc-rename.nvim")
time([[Config for inc-rename.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('rm.plugins.lsp.lspconfig')
time([[Config for nvim-lspconfig]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require('rm.plugins.workflow.telescope')
time([[Config for telescope.nvim]], false)
-- Config for: dropbar.nvim
time([[Config for dropbar.nvim]], true)
require('rm.plugins.ui.winbar')
time([[Config for dropbar.nvim]], false)
-- Config for: nvim-coverage
time([[Config for nvim-coverage]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcoverage\frequire\0", "config", "nvim-coverage")
time([[Config for nvim-coverage]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n \1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\rfiletype\1\5\0\0\tyaml\vgotmpl\byml\fpubspec\1\0\4\25show_current_context\2\25use_treesitter_scope\2\19use_treesitter\2\31show_current_context_start\1\nsetup\21indent_blankline\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
require('rm.plugins.motion.pairs')
time([[Config for nvim-autopairs]], false)
-- Config for: bufresize.nvim
time([[Config for bufresize.nvim]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14bufresize\frequire\0", "config", "bufresize.nvim")
time([[Config for bufresize.nvim]], false)
-- Config for: git-conflict.nvim
time([[Config for git-conflict.nvim]], true)
try_loadstring("\27LJ\2\nñ\2\0\0\4\0\t\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\3\0'\2\4\0B\0\2\0029\0\5\0005\2\6\0005\3\a\0=\3\b\2B\0\2\1K\0\1\0\15highlights\1\0\2\rincoming\25ConflictMarkerTheirs\fcurrent\23ConflictMarkerOurs\1\0\1\24disable_diagnostics\2\nsetup\17git-conflict\frequire]highlight ConflictMarkerOurs guibg=#2e5049\nhighlight ConflictMarkerTheirs guibg=#344f69\n\bcmd\bvim\0", "config", "git-conflict.nvim")
time([[Config for git-conflict.nvim]], false)
-- Config for: everforest-nvim
time([[Config for everforest-nvim]], true)
require('rm.plugins.ui.colorscheme')
time([[Config for everforest-nvim]], false)
-- Config for: neo-tree.nvim
time([[Config for neo-tree.nvim]], true)
require('rm.plugins.workflow.neo-tree')
time([[Config for neo-tree.nvim]], false)
-- Config for: ts-node-action
time([[Config for ts-node-action]], true)
require('rm.plugins.motion.ts-node-action')
time([[Config for ts-node-action]], false)
-- Config for: headlines.nvim
time([[Config for headlines.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14headlines\frequire\0", "config", "headlines.nvim")
time([[Config for headlines.nvim]], false)
-- Config for: nvim-navic
time([[Config for nvim-navic]], true)
require('rm.plugins.lsp.navic')
time([[Config for nvim-navic]], false)
-- Config for: nvim-spider
time([[Config for nvim-spider]], true)
try_loadstring("\27LJ\2\nã\4\0\0\6\0\23\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0005\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\15\0'\3\16\0'\4\17\0005\5\18\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\19\0'\3\20\0'\4\21\0005\5\22\0B\0\5\1K\0\1\0\1\0\1\tdesc\14Spider-ge0<cmd>lua require('spider').motion('ge')<CR>\age\1\4\0\0\6n\6o\6x\1\0\1\tdesc\rSpider-b/<cmd>lua require('spider').motion('b')<CR>\6b\1\4\0\0\6n\6o\6x\1\0\1\tdesc\rSpider-e/<cmd>lua require('spider').motion('e')<CR>\6e\1\4\0\0\6n\6o\6x\1\0\1\tdesc\rSpider-w/<cmd>lua require('spider').motion('w')<CR>\6w\1\4\0\0\6n\6o\6x\bset\vkeymap\bvim\1\0\1!skipInsignificantPunctuation\2\nsetup\vspider\frequire\0", "config", "nvim-spider")
time([[Config for nvim-spider]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\topen\fspectre\frequiren\1\0\5\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0'\3\a\0003\4\b\0B\0\4\1K\0\1\0\0\15<leader>rr\6n\bset\vkeymap\bvim\nsetup\fspectre\frequire\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: nvim-various-textobjs
time([[Config for nvim-various-textobjs]], true)
try_loadstring("\27LJ\2\né\3\0\0\6\0\19\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\4\0009\0\5\0009\0\6\0005\2\a\0'\3\b\0'\4\t\0005\5\n\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\v\0'\3\f\0'\4\r\0005\5\14\0B\0\5\0016\0\4\0009\0\5\0009\0\6\0005\2\15\0'\3\16\0'\4\f\0B\0\4\0016\0\4\0009\0\5\0009\0\6\0005\2\17\0'\3\18\0'\4\b\0B\0\4\1K\0\1\0\aaW\1\3\0\0\6o\6x\aiW\1\3\0\0\6o\6x\1\0\1\nremap\1;<cmd>lua require(\"various-textobjs\").subword(true)<CR>\aiw\1\3\0\0\6o\6x\1\0\1\nremap\1<<cmd>lua require(\"various-textobjs\").subword(false)<CR>\aaw\1\3\0\0\6o\6x\bset\vkeymap\bvim\1\0\1\22useDefaultKeymaps\1\nsetup\21various-textobjs\frequire\0", "config", "nvim-various-textobjs")
time([[Config for nvim-various-textobjs]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
require('rm.plugins.workflow.project')
time([[Config for project.nvim]], false)
-- Config for: noice.nvim
time([[Config for noice.nvim]], true)
require('rm.plugins.ui.noice')
time([[Config for noice.nvim]], false)
-- Config for: windows.nvim
time([[Config for windows.nvim]], true)
require('rm.plugins.workflow.windows')
time([[Config for windows.nvim]], false)
-- Config for: dressing.nvim
time([[Config for dressing.nvim]], true)
try_loadstring("\27LJ\2\np\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\4\0005\4\3\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\ninput\1\0\0\16win_options\1\0\0\1\0\1\rwinblend\3\0\nsetup\rdressing\frequire\0", "config", "dressing.nvim")
time([[Config for dressing.nvim]], false)
-- Config for: go.nvim
time([[Config for go.nvim]], true)
require('rm.plugins.lang.go')
time([[Config for go.nvim]], false)
-- Config for: muren.nvim
time([[Config for muren.nvim]], true)
try_loadstring("\27LJ\2\nø\3\0\0\5\0\f\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\0016\0\6\0009\0\a\0009\0\b\0'\2\t\0'\3\n\0'\4\v\0B\0\4\1K\0\1\0\25<cmd>MurenToggle<cr>\15<leader>rs\6n\bset\vkeymap\bvim\tkeys\1\0\t\15do_replace\t<CR>\24scroll_preview_down\v<Down>\22scroll_preview_up\t<Up>\31toggle_option_under_cursor\t<CR>\25toggle_options_focus\n<C-k>\16toggle_side\n<Tab>\nclose\6q\fdo_redo\19<localleader>r\fdo_undo\19<localleader>u\1\0\6\19preview_height\3\f\18options_width\3\20\20patterns_height\3\n\19patterns_width\3\30\20create_commands\2\vanchor\vcenter\nsetup\nmuren\frequire\0", "config", "muren.nvim")
time([[Config for muren.nvim]], false)
-- Config for: tint.nvim
time([[Config for tint.nvim]], true)
try_loadstring("\27LJ\2\n€\1\0\1\6\0\t\0\0306\1\0\0009\1\1\0019\1\2\1\18\3\0\0B\1\2\0026\2\0\0009\2\1\0029\2\3\2\18\4\1\0'\5\4\0B\2\3\0026\3\0\0009\3\1\0039\3\5\3\18\5\0\0B\3\2\0029\3\6\3\a\3\a\0X\3\2Ä+\3\1\0X\4\1Ä+\3\2\0\6\2\b\0X\4\4Ä\18\4\3\0X\5\3Ä+\4\1\0X\5\1Ä+\4\2\0L\4\2\0\rterminal\5\rrelative\24nvim_win_get_config\fbuftype\24nvim_buf_get_option\21nvim_win_get_buf\bapi\bvimŒ\1\1\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0023\3\6\0=\3\a\2B\0\2\1K\0\1\0\27window_ignore_function\0\30highlight_ignore_patterns\1\3\0\0\17WinSeparator\rStatus.*\1\0\3\27tint_background_colors\2\15saturation\4Õô≥Ê\fÃô≥ˇ\3\ttint\3˛ˇˇˇ\15\nsetup\ttint\frequire\0", "config", "tint.nvim")
time([[Config for tint.nvim]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd lualine.nvim ]]

-- Config for: lualine.nvim
require('rm.plugins.ui.statusline')

time([[Sequenced loading]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'StartupTime', function(cmdargs)
          require('packer.load')({'vim-startuptime'}, { cmd = 'StartupTime', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-startuptime'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('StartupTime ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType dart ++once lua require("packer.load")({'dart-vim-plugin', 'flutter-tools.nvim'}, { ft = "dart" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'gotests.nvim'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType log ++once lua require("packer.load")({'Colorizer', 'vim-log-highlighting'}, { ft = "log" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufEnter * ++once lua require("packer.load")({'neotest', 'null-ls.nvim', 'nvim-dap', 'trouble.nvim', 'pounce.nvim', 'nvim-colorizer.lua'}, { event = "BufEnter *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'copilot.lua', 'LuaSnip', 'nvim-cmp', 'Comment.nvim'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles(1) end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

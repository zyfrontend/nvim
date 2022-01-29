return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'ybian/smartim'
    -------------------------- plugins -------------------------------------------
    -- 主题
    use 'olimorris/onedarkpro.nvim'
    use "sainnhe/gruvbox-material"
    use 'ful1e5/onedark.nvim'

    --状态栏插件
    use {
      "nvim-lualine/lualine.nvim",
      requires = {"kyazdani42/nvim-web-devicons", opt = true}
    }
    -- bufferline 显示标签页,与lualine配合使用
    use "akinsho/bufferline.nvim"
    -- 文件树
    use {
      "Shougo/defx.nvim",
      requires = {
        "kristijanhusak/defx-icons", -- dexf文件管理图标支持
        "t9md/vim-choosewin" -- 窗口选择器,可以让defx使用i打开文件
      }
    }
    --内嵌浮动ranger插件
    use "kevinhwang91/rnvimr"
    -- 自动为尚不支持 Neovim 0.5 内置 lsp 客户端的配色方案创建缺少的 LSP 诊断突出显示组。
    use "folke/lsp-colors.nvim"
    -- 基于neovim 内置lsp 的轻量级lsp 插件，具有高性能UI。非常酷
    use 'rinx/lspsaga.nvim'
    -- 文件搜索 预览 等
    use {
      "nvim-telescope/telescope.nvim",
        requires = {
          "nvim-lua/plenary.nvim",
          "kyazdani42/nvim-web-devicons"
        }
    }
    -- 加速文件搜索速度,如果安装失败需要到插件目录执行make命令手动编译
    -- 用了这个插件以后，貌似更快了(感觉输入更跟手了，可能是心理作用)。但是对于我的小项目感受不是很明显
    use {"nvim-telescope/telescope-fzf-native.nvim", run = "make"}
    --彩虹括号
    use 'luochen1990/rainbow'
    -- 闭合括号
    use "windwp/nvim-autopairs"
    -- lsp
    use "neovim/nvim-lspconfig"
    use {
    "hrsh7th/nvim-cmp",
      requires = {
      "hrsh7th/cmp-nvim-lsp", --neovim 内置 LSP 客户端的 nvim-cmp 源
      --以下插件可选，可以根据个人喜好删减
      "onsails/lspkind-nvim", --美化自动完成提示信息
      "hrsh7th/cmp-buffer", --从buffer中智能提示
      "hrsh7th/cmp-nvim-lua", --nvim-cmp source for neovim Lua API.
      "octaltree/cmp-look", --用于完成英语单词
      "hrsh7th/cmp-path", --自动提示硬盘上的文件
      "hrsh7th/cmp-calc", --输入数学算式（如1+1=）自动计算
      "f3fora/cmp-spell", --nvim-cmp 的拼写源基于 vim 的拼写建议
      "hrsh7th/cmp-emoji", --输入: 可以显示表情
      }
    }

    -- 代码段提示
    use {
      "L3MON4D3/LuaSnip",
      requires = {
      "saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
      "rafamadriz/friendly-snippets" --代码段合集
      }
    }
  end)

return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- gruvbox theme
    use {
       "ellisonleao/gruvbox.nvim",
       requires = {"rktjmp/lush.nvim"}
    }

    -- zephyr theme
    use {
       'glepnir/zephyr-nvim',
    }
    
    -- 文件侧边栏
    use {
      'nvim-tree/nvim-tree.lua',
      requires = {'nvim-tree/nvim-web-devicons' }
    }

    -- treesitter 用于语法高亮
    use {
       'nvim-treesitter/nvim-treesitter',
       run = ':TSUpdate',
    }

    -- 显示细垂直线
     use { 
       'Yggdroot/indentLine'
    } 

    -- 用于注释
    use {
      'preservim/nerdcommenter'
    }

    -- 个人代码片段
    use {
      'Flower101010/vim-snippets'
    }

    -- 代码片段插件
    use {
      'SirVer/ultisnips'
    }
    

    -- vimtex 插件
    use {'lervag/vimtex'}


    -- 状态栏插件
    use{'vim-airline/vim-airline'}
    use {'vim-airline/vim-airline-themes'}

    -- coc 代码提示
    use {'neoclide/coc.nvim', branch = 'release'}

    -- 起始页面
    use {
      'glepnir/dashboard-nvim',
      event = 'VimEnter',
      config = function()
      require('dashboard').setup {
            -- config
      }
        end,
      requires = {'nvim-tree/nvim-web-devicons'}
    }
end)

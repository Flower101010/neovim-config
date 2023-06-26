return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

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

    -- Tab页插件
    use {'akinsho/bufferline.nvim', tag = "*", 
          requires = 'nvim-tree/nvim-web-devicons'}

    -- coc 代码提示
    use {'neoclide/coc.nvim', branch = 'release'}

    -- 模糊搜索
    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
    -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- 起始页
    use {
      'glepnir/dashboard-nvim'
    }

end)    

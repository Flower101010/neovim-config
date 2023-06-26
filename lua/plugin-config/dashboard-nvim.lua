  require('dashboard').setup({
    theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        { 
          desc = '󰊳 Update', 
          group = '@property', 
          action = 'PackerSync', 
          key = 'u' 
        },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
      packages = { enable = false },
      project = { enable = true, action = 'Telescope find_files' },
      footer = {'',
    'Veni, vidi, vici.',},
    },
  })

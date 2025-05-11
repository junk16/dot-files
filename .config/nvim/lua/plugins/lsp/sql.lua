local lspconfig = require('lspconfig')

lspconfig.sqls.setup({
  settings = {
    sqls = {
      -- Example configuration (adjust based on your needs)
      connections = {
        {
          driver = 'postgres',
          name = 'PostgreSQL',
          server_info = 'postgresql://user:password@localhost/dbname',
        },
      },
    },
  },
})


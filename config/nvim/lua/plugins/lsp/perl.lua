local lspconfig = require("lspconfig")

lspconfig.perlnavigator.setup({
  settings = {
    perlnavigator = {
      perlPath = "perl", -- Adjust if Perl is not in your PATH
      enableWarnings = true,
      perltidyProfile = "", -- Path to your .perltidyrc if you have one
      perlcriticProfile = "", -- Path to your .perlcriticrc if you have one
    },
  },
})

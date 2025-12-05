-- ================================================================================================
-- TITLE : kanagawa
-- -- LINKS :
--   > github : https://github.com/rebelot/kanagawa.nvim/
-- ================================================================================================

return  {
    'rebelot/kanagawa.nvim',
    lazy = false,        -- Load immediately
    priority = 1000,     -- Load early
    config = function()
      require('kanagawa').setup({
        -- Optional configuration
        transparent = false,
        terminalColors = true,
        colors = {
          palette = {
            -- Custom palette adjustments
            sumiInk0 = "#16161D",
          }
        },
        overrides = function(colors)
          return {
            -- Custom highlights
            NormalFloat = { bg = colors.theme.ui.bg_p1 },
            FloatBorder = { bg = colors.theme.ui.bg_p1, fg = colors.theme.ui.border },
          }
        end,
      })
      -- Apply colorscheme
      vim.cmd.colorscheme('kanagawa-wave')
    end,
  }

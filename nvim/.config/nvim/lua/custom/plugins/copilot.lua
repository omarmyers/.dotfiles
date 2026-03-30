return {
  {
    'Exafunction/windsurf.vim',
    event = 'BufEnter',
    keys = {
      {
        '<leader>ta',
        function()
          vim.cmd 'Codeium Toggle'
          vim.defer_fn(function()
            local status = vim.g.codeium_enabled == 0 and 'disabled' or 'enabled'
            vim.notify('Windsurf ' .. status, vim.log.levels.INFO, { title = 'Windsurf' })
          end, 100)
        end,
        desc = 'Toggle Windsurf',
      },
    },
  },
  -- {
  --   'github/copilot.vim',
  --   event = 'InsertEnter',
  --   init = function()
  --     -- Disable tab mapping so Tab keeps working for cmp/snippets
  --     vim.g.copilot_no_tab_map = true
  --
  --     -- Optional: start enabled
  --     vim.g.copilot_enabled = 1
  --   end,
  --   keys = {
  --     {
  --       '<leader>ta',
  --       function()
  --         if vim.g.copilot_enabled == 1 then
  --           vim.cmd 'Copilot disable'
  --           vim.notify('Copilot disabled', vim.log.levels.INFO, { title = 'Copilot' })
  --         else
  --           vim.cmd 'Copilot enable'
  --           vim.notify('Copilot enabled', vim.log.levels.INFO, { title = 'Copilot' })
  --         end
  --       end,
  --       desc = 'Toggle Copilot',
  --     },
  --     {
  --       '<Tab>',
  --       'copilot#Accept("<CR>")',
  --       mode = 'i',
  --       expr = true,
  --       replace_keycodes = false,
  --       desc = 'Accept Copilot suggestion',
  --     },
  --     {
  --       '<M-]>',
  --       '<Plug>(copilot-next)',
  --       mode = 'i',
  --       desc = 'Next Copilot suggestion',
  --     },
  --     {
  --       '<M-[>',
  --       '<Plug>(copilot-previous)',
  --       mode = 'i',
  --       desc = 'Previous Copilot suggestion',
  --     },
  --     {
  --       '<C-]>',
  --       '<Plug>(copilot-dismiss)',
  --       mode = 'i',
  --       desc = 'Dismiss Copilot suggestion',
  --     },
  --   },
  -- },
}

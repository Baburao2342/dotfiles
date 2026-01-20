return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 
    'nvim-tree/nvim-web-devicons',
    'yavorski/lualine-macro-recording.nvim',  -- NEW: adds macro recording
  },
  opts = {
      theme = 'auto',
      sections = {
          lualine_c = {
              { 'macro_recording' },  -- NEW: shows "Recording @a" when recording
              {
                  'filename',
                  path = 0,
                  file_status = true,
                  shorten_path = true,
              },
          }
      },
  },
}

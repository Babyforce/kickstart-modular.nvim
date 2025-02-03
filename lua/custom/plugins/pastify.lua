return {
    'TobinPalmer/pastify.nvim',
    cmd = { 'Pastify', 'PastifyAfter' },
    keys = {
        {noremap = true, mode = "x", '<leader>p', "<cmd>PastifyAfter<CR>"},
        {noremap = true, mode = "n", '<leader>p', "<cmd>PastifyAfter<CR>"},
        {noremap = true, mode = "n", '<leader>P', "<cmd>Pastify<CR>"},
    },
    config = function()
    require('pastify').setup {
        opts = {
            local_path = '/images/',
            save = 'local_file',
            apikey = "YOUR API KEY (https://api.imgbb.com/)", -- Needed if you want to save online.
        },
    }
    end
}

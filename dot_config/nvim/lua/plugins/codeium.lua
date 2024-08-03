return {
  "Exafunction/codeium.vim",
  event = "BufEnter",
  config = function()
    vim.g.codeium_disable_bindings = 1
    vim.keymap.set('i', '<TAB>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true, desc = "Accept Codeium Suggestion" })
    vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true, desc = "Next Suggestion" })
    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true, desc = "Prev Suggestion" })
    vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true, desc = "Clear suggestion" })
    vim.keymap.set('n', "<leader>ce", ":CodeiumEnable<CR>", { desc = "Enable Codeium" })
    vim.keymap.set('n', '<leader>cd', ":CodeiumDisable<CR>", { desc = "Disable Codeium" })
  end
}

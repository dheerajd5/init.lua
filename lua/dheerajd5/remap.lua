function Run(fileName)
    fileName = fileName or "q.cpp"
    local runCmd = "!g++ " .. fileName .. " -o a"
    vim.cmd(runCmd)
    vim.cmd('!./a')
end

function CP()
    vim.cmd('vsplit')
    vim.cmd('wincmd l')
    vim.cmd('e output.txt')
    vim.cmd('split')
    vim.cmd('e input.txt')
    vim.cmd('wincmd h')
end

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>c", CP, { desc = "To setup code for CP" } )
vim.keymap.set("n", "<leader>r", Run, { desc = "To run code for CP" } )


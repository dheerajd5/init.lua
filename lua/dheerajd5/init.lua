require("dheerajd5.remap")
require("dheerajd5.set")
require("dheerajd5.packer")

-- ColourMyPencils()

function CP()
    vim.cmd('vsplit')
    vim.cmd('wincmd l')
    vim.cmd('e output.txt')
    vim.cmd('split')
    vim.cmd('e input.txt')
    vim.cmd('wincmd h')
end

function Run(fileName)
    fileName = fileName or "q.cpp"
    local runCmd = "!g++ " .. fileName .. " -o a"
    vim.cmd(runCmd)
    vim.cmd('!./a')
end




local M= {}

local binary_path = vim.fn.fnamemodify(
  vim.api.nvim_get_runtime_file("lua/mvp.lua", false)[1], ":h:h")
  .. "/target/release/mvp"



function M.start()
  if M.job_id ~= nil then return end
  M.job_id = vim.fn.jobstart({ binary_path }, { rpc = true })
end

function M.run()
    vim.rpcnotify(M.job_id, 'run')
end

return M


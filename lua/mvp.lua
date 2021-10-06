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

function M.display_extmarks(namespace)
    vim.api.nvim_buf_set_extmark(0,namespace,2,-1, {virt_text = {"extmarks created from rust call", "Comment"}}})
end

return M


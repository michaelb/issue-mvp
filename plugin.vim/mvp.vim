let g:mvp_namespace_id = nvim_create_namespace("mvp_namespace")
command!  VTnative lua vim.api.nvim_buf_set_extmark(0,vim.g.mvp_namespace_id,1, -1, {virt_text = {{"ExtMark/Virtual text from native lua call", "Comment"}}})

command! VTneovimlib lua require"mvp".tell_rust_to_send_command()


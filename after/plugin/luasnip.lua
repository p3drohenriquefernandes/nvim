local ok, luasnip = pcall(require, 'luasnip')
if not ok then
  return
end

require('luasnip.loaders.from_lua').load {
  paths = vim.fn.stdpath 'config' .. '/lua/snippets',
}

local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node

return {
  s('notimpl', {
    t 'throw new UnsupportedOperationException("not implemented yet");',
  }),
}

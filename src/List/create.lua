local List = script.Parent

local Llama = List.Parent
local t = require(LLama.Parent.t)

local validate = t.tuple(t.intersection(t.integer, t.numberMin(0)), t.any)

local function recur(count, value)
	assert(validate(count, value))

	local list = {}

	for i = 1, count do
		list[i] = value
	end

	return list
end

return recur
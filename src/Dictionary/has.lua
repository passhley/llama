local Dictionary = script.Parent

local Llama = Dictionary.Parent
local t = require(LLama.Parent.t)

local validate = t.tuple(t.table, t.any)

local function has(dictionary, key)
	assert(validate(dictionary, key))

	return dictionary[key] ~= nil
end

return has
-- This class represents a column in a table.

-- Constructor
Column = {}
Column.__index = Column

-- Meta table for column class
setmetatable(Column, {
	__call = function(self, name, type)
		local column = {}

		column.type = type
		column.name = name

		return setmetatable(column, Column)
	end
})
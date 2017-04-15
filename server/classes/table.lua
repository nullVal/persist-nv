-- This class represents a table in a database.

-- Constructor
Table = {}
Table.__index = Table

-- Meta table for table class
setmetatable(Table, {
	__call = function(self, name, primaryKeyColumn, columns)
		local table = {}
		logMessage('Creating new table: ' + name)

		table.name = name
		logMessage(name + ' primary key column: ' + primaryKeyColumn.name)
		table.primaryKeyColumn = primaryKeyColumn
		table.columns = columns

		return setmetatable(table, Table)
	end
})

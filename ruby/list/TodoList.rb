class TodoList
	def initialize(list_items)
		@list_items = list_items
	end

	def get_items
		@list_items
	end

	def add_item(item)
		@list_items <<item
		@list_items
	end

	def delete_item(item)
		@list_items.delete(item)
		@list_items
	end

	def get_item(index)
		@list_items.fetch(index)
	end
end



class TagsController < ActionController
	def new
		@tag = Tag.new
		respond_with(@tag)
	end
	def create
	end
end
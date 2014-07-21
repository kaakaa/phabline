class Action
	attr_accessor :title, :content, :link

	def initialize(title, content, link)
		@title = title
		@content = content
		@link = link
	end
end

module ApplicationHelper
	def title(page_title)
	  content_for(:title) { page_title }
	end
	def is_active?(link_path)
	  current_page?(link_path) ? "fa-spin" : ""
	end
end

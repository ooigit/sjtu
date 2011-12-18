module ApplicationHelper
  def title
    base_title = "School of Software"
	if @title.nil?
	  base_title
	else
	  "#{base_title} | #{@title}"
	end
  end
end

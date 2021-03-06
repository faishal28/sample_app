module ApplicationHelper
  
  def title
    base_title = "Ruby on Rails Tutorials"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  def logo
    logo = image_tag "logo.png", :alt => "logo", :class => "round"
  end
end
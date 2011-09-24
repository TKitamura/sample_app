module ApplicationHelper

# Return a titile on a per-page basis.
def title
 base_title = "Ruby on Rails Tutorial Sample App"
 if @title.nil?
  base_title
 else
  "#{base_title} | #{@title}"
 end
end

#Return the logo
def logo
 logo =  image_tag("logo.png", :alt => "Sample App", :class => "round")
end

end

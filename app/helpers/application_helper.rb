module ApplicationHelper
  
  def coffeescript_include_tag(*sources)
    javascript_include_tag(*(sources.map { |js| "coffee/#{js}" }))
  end
  
end

module ApplicationHelper
  
  def coffeescript_include_tag(*sources)
    javascript_include_tag(*(sources.map { |js| "coffee/#{js}" }))
  end
  
  def include_jquery_svg
    entries = Rails.root.join("public", "javascripts", "svg").opendir.entries.grep(/(.+?\.js)/)
    javascript_include_tag(*entries)
  end
  
end

module ApplicationHelper

# Returns active if the path asked, is the current page
def currentPath(path)
  "active" if current_page?(path)
end

end

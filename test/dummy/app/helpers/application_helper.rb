module ApplicationHelper
  def active_nav_link(name, path)
    active_class = 'active' if current_page?(path)
    content_tag :li, class: active_class do
      link_to t(name), path
    end
  end
end

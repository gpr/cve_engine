module ApplicationHelper
  def active_nav_link(name, path)
    active_class = 'active' if current_page?(path)
    content_tag :li, class: active_class do
      link_to t(name), path
    end
  end

  def flash_bootstrap_alert(name)
    case name
      when 'error'
        'danger'
      when 'alert'
        'danger'
      when 'notice'
        'success'
      else
        name
    end
  end

  def flash_fa_icon(name)
    case name
      when 'error'
        'minus-circle'
      when 'alert'
        'minus-circle'
      when 'notice'
        'check-circle'
      when 'warning'
        'exclamation-circle'
      when 'info'
        'info-circle'
    end
  end
end

module ApplicationHelper
  # Helper for create link with active class
  def create_link(text, path)
    class_name = current_page?(path) ? 'active' : ''

    content_tag(:li, class: class_name) do
      link_to text, path
    end
  end

  # Helper for Alerts
  def flash_class(level)
    case level
      when :notice then 'alert alert-info'
      when :success then 'alert alert-success'
      when :error then 'alert alert-error'
      when :alert then 'alert alert-error'
    end
  end
end

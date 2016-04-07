module ApplicationHelper
  def tab_title
    controller_name.capitalize
  end

  def active_tab?(link_path)
    "active" if request.fullpath == link_path
  end
end

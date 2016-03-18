module ApplicationHelper
  def active_tab?(link_path)
    "active" if request.fullpath == link_path
  end
end

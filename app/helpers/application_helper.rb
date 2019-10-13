module ApplicationHelper
# Returns the full title on a per-page basis.
  def full_title(page_title = '')
    base_title = "Employee Training System"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end

end

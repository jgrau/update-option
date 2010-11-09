module ApplicationHelper
  def show_flash
    flash.collect{ |key,msg| content_tag(:div, msg, :class => key) }.join(' ').html_safe
  end
  
  def title
    @title_full ? @title_full : [@title_prefix, "Codename Sofus"].compact.join(' - ')
  end
  
  def title=(title)
    @title_prefix = title
    @template.instance_variable_set("@title_prefix", @title_prefix)  # Necessary if set from view
  end

  def full_title=(title)
    @title_full = title % "Codename Sofus"
    @template.instance_variable_set("@title_full", @title_full)  # Necessary if set from view
  end
  
  def javascript(*args)
    content_for(:head) { javascript_include_tag(*args) }
  end
end

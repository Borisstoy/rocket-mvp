module ApplicationHelper

  def main_wrapper_page_style
    wrap = ""
    if travel
      wrap = "main-wrapper-travel"
    elsif rhythm
      wrap = "main-wrapper-rhythm"
    else
      wrap = ""
    end
    wrap
  end

  def nav_wrapper
    wrap = ""
    if travel
      wrap = "nav-wrapper-travel"
    elsif rhythm
      wrap = "nav-wrapper-rhythm"
    else
      wrap = "nav-wrapper-rocket"
    end
    wrap
  end

  def is_path?(paths)
    request.path.include?(paths)
  end

  def rocket
    is_path?("/")
  end

  def rhythm
    is_path?("/rhythm")
  end

  def travel
    is_path?("/travel")
  end
end

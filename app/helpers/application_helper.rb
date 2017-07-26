module ApplicationHelper
  def main_wrapper_page_style
    wrap = ""
    if is_path?("/travel")
      wrap = "main-wrapper-travel"
    elsif is_path?("/rhythm")
      wrap = "main-wrapper-rhythm"
    else
      wrap = ""
    end
    wrap
  end

  def is_path?(paths)
    request.path.include?(paths)
  end
end

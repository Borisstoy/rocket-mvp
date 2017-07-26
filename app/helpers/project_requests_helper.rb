module ProjectRequestsHelper
  def budget_range
    ranges = ["2,000€ - 3,000€",
             "3,000€ - 4,000€",
             " > 4000€"]
    ranges.each { |range| range }
  end

  def link_to_new_project(wording, style)
    link_to "#{wording}", new_project_request_path(@new_project),
                                      class: "#{style} openSliderBtn",
                                      remote: true
  end

  def conditional_proj_red_submit
    form_wrap = ""
    if request.referrer.include? 'travel'
      form_wrap = "travel_simple_form_wrap"
    elsif request.referrer.include? 'rhythm'
      form_wrap = "rhy_simple_form_wrap"
    else
      form_wrap = "rocket_simple_form_wrap"
    end
    form_wrap
  end

  def set_new_project_instance
    project = @new_project
    if request.referrer.include? 'travel'
      project.travel = true
    elsif request.referrer.include? 'rhythm'
      project.rhythm = true
    else
      project.home = true
    end
    project.save
  end
end

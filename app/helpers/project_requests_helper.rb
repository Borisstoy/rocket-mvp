module ProjectRequestsHelper
  def budget_range
    ranges = ["2,000€ - 3,000€",
             "3,000€ - 4,000€",
             " > 4000€"]
    ranges.each { |range| range }
  end

  def link_to_new_project(wording, style)
    link_to "#{wording}", new_project_request_path(@new_project),
                                      class: "#{style}",
                                      id: "contactSliderBtn",
                                      remote: true
  end

  def set_new_project_instance
    project = @new_project
    if request.referrer.include? 'home'
      project.home = true
    elsif request.referrer.include? 'travel'
      project.travel = true
    end
    project.save
  end
end

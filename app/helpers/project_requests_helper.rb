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

  def project_form_title
    if request.referrer.include? 'rhythm'
      t('rhythm.modal-contact-title')
    else
      t('modal-contact-title')
    end
  end

  def project_text_area_placeholder
    if request.referrer.include? 'en/rhythm'
      I18n.locale = "en"
      I18n.t('simple_form.proj_req.rhythm_text_area')
    elsif request.referrer.include? '/rhythm'
      I18n.locale = I18n.default_locale
      I18n.t('simple_form.proj_req.rhythm_text_area')
    elsif request.referrer.include? 'fr/rhythm'
      I18n.locale = I18n.default_locale
      I18n.t('simple_form.proj_req.rhythm_text_area')
    elsif request.referrer.include? 'en'
      I18n.locale = "en"
      I18n.t('simple_form.proj_req.rocket_text_area')
    else
      I18n.locale = "fr"
      I18n.t('simple_form.proj_req.rocket_text_area')
    end
  end
end

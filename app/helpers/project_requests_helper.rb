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

  def url_ancestor(url_fragment)
    request.referer.include? url_fragment
  end

  def conditional_proj_req_submit
    form_wrap = ""
    if url_ancestor 'travel'
      form_wrap = "travel_simple_form_wrap"
    elsif url_ancestor 'rhythm'
      form_wrap = "rhy_simple_form_wrap"
    else
      form_wrap = "rocket_simple_form_wrap"
    end
    form_wrap
  end

  def set_new_project_instance
    project = @new_project
    if url_ancestor 'travel'
      project.travel = true
    elsif url_ancestor 'rhythm'
      project.rhythm = true
    else
      project.home = true
    end
    project.save
  end

  def project_form_title
    if url_ancestor 'en/rhythm'
      I18n.locale = "en"
      I18n.t('rhythm.modal_contact_title')
    elsif url_ancestor '/rhythm'
      I18n.locale = "fr"
      I18n.t('rhythm.modal_contact_title')
    elsif url_ancestor 'en'
      I18n.locale = "en"
      I18n.t('modal_contact_title')
    else
      I18n.locale = "fr"
      I18n.t('modal_contact_title')
    end
  end

  def project_form_text
    if request.referer.include? 'en/rhythm'
      I18n.locale = "en"
      ('<p class="project_form_text">' + I18n.t("rhythm.project_form_text") + '</p>').html_safe
    elsif url_ancestor 'fr/rhythm'
      I18n.locale = "fr"
      ('<p class="project_form_text">' + I18n.t("rhythm.project_form_text") + '</p>').html_safe
    elsif url_ancestor '/rhythm'
      I18n.locale = "fr"
      ('<p class="project_form_text">' + I18n.t("rhythm.project_form_text") + '</p>').html_safe
    else
      ""
    end
  end

  def project_text_area_placeholder
    if url_ancestor 'en/rhythm'
      I18n.locale = "en"
      I18n.t('simple_form.proj_req.rhythm_text_area')
    elsif url_ancestor '/rhythm'
      I18n.locale = I18n.default_locale
      I18n.t('simple_form.proj_req.rhythm_text_area')
    elsif url_ancestor 'fr/rhythm'
      I18n.locale = I18n.default_locale
      I18n.t('simple_form.proj_req.rhythm_text_area')
    elsif url_ancestor 'en'
      I18n.locale = "en"
      I18n.t('simple_form.proj_req.rocket_text_area')
    else
      I18n.locale = "fr"
      I18n.t('simple_form.proj_req.rocket_text_area')
    end
  end
end

class AdminNotificationMailer < ApplicationMailer
  default from: "info.rocketmvp@gmail.com"

  layout 'mailer'

  def new_project_notification(new_project)
    @new_project = new_project
    mail(to: 'boris.stoy@gmail.com', subject: 'New project')
  end
end

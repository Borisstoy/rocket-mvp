ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Project Requests" do
          table_for ProjectRequest.order("created_at desc").last(10) do
            column("ID") { |project| status_tag(project.id) }
            column("Name") { |project| link_to(project.name , admin_project_request_path(project)) }
            column("Email") { |project| project.email }
            column("Submitted on") { |project| project.created_at }
          end
        end
      end
    end
  end # content
end

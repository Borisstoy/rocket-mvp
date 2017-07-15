require 'spec_helper'

RSpec.describe Project_Request, type: :model do
  subject { create :proejct_request }

  it 'sends an email' do
    expect { subject.new_project_notification }
      .to change { ActionMailer::Base.deliveries.count }.by(1)
  end
end

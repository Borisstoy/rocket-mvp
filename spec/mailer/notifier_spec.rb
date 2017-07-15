require 'spec_helper'

RSpec.describe Notifier, type: :mailer do
  describe 'New project' do
    let(:user) { name: 'Admin', email: 'boris.stoy@gmail.com' }
    let(:mail) { described_class.instructions(user).deliver_now }
    let(:proejct_request) { name: 'New project', email: 'new_project@gmail.com' }

    it 'renders the subject' do
      expect(mail.subject).to eq('New project')
    end

    it 'renders the receiver email' do
      expect(mail.to).to eq([user.email])
    end

    it 'renders the sender email' do
      expect(mail.from).to eq(['info.rocketmvp@gmail.com'])
    end

    it 'assigns @name' do
      expect(mail.body.encoded).to match(user.name)
    end
  end
end

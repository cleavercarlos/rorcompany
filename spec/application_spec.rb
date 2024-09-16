require 'rails_helper'

RSpec.describe Application, type: :model do
  it 'allows a user to apply for a job offer' do
    user = create(:user, role: :employee)
    job_offer = create(:job_offer)

    application = Application.create(user: user, job_offer: job_offer)

    expect(application).to be_valid
    expect(user.applications.count).to eq(1)
  end
end

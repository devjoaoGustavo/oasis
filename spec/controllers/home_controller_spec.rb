require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET welcome' do
    before { get :welcome }

    subject { response }

    it { expect(subject.status).to eq 200 }
    it { is_expected.to render_template :welcome }
  end
end

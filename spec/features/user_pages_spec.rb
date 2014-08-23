require 'rails_helper'

feature 'User', type: :feature do

  subject { page }

  describe 'Signup page' do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title('| Sign up') }
  end
end

require 'rails_helper'

feature 'StaticPages', type: :feature do
  describe 'Home page' do
    it 'should have the content "Sample App"' do
      visit('/static_pages/home')
      expect(page).to have_content('Sample App')
    end
  end
end

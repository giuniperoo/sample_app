require 'rails_helper'

feature 'Static Pages', type: :feature do

  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }
  subject { page }

  shared_examples_for 'all static pages' do
    it { should have_selector('h1', text: heading) }
    it { should have_title("#{base_title} #{page_title}") }
  end

  describe 'Home page' do
    before { visit root_path }
    let(:heading)    { 'Sample App' }
    let(:page_title) { '' }

    it_should_behave_like 'all static pages'
    it { should_not have_title('| Home') }
  end

  describe 'Help page' do
    before { visit help_path }
    let(:heading)    { 'Help' }
    let(:page_title) { '| Help' }

    it_should_behave_like 'all static pages'
  end

  describe 'About page' do
    before { visit about_path }
    let(:heading)    { 'About Us' }
    let(:page_title) { '| About Us' }

    it_should_behave_like 'all static pages'
  end

  describe 'Contact page' do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_title('| Contact') }
  end

  describe 'Layout links' do
    it 'should correctly navigate' do
      visit root_path
      click_link 'About'
      page { should have_title('About Us') }
      click_link 'Help'
      page { should have_title('Help') }
      click_link 'Contact'
      page { should have_title('Contact') }
      click_link 'Home'
      click_link 'Sign up now!'
      page { should have_title('Sign up') }
      click_link 'sample app'
      page { should have_title("#{base_title}") }
    end
  end
end

require 'spec_helper'

describe "StaticPages" do

  let (:base_title) { "Ruby on Rails Tutorial Sample App" }
  
  subject {page}
  
  describe "Home Page" do
    before { visit root_path}
    
    it { should have_content('Sample App') }
    it { should have_title("") }
    it { should_not have_title('| Home') }
  end

  describe "Help Page" do
    before { visit help_path}

    it { should have_title("#{base_title} | Help") }
    it { should have_content('Help')}
  end

  describe "About Page" do
    before{ visit about_path }

    it { should have_title("#{base_title} | About Us")}
    it { should have_content('About Us')}
  end

  describe "Contact page" do
    before { visit contact_path }

    it {should have_title("#{base_title} | Contact")}
    it {should have_content('Contact')}    
  end
end

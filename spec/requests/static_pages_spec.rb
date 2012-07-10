require 'spec_helper'

describe "Static Pages" do
 
  subject {page}

  describe "Home page" do

    before {visit root_path}

    it "shuld have the h1 'Sample App'" do
      should have_selector('h1', text: 'Sample App')
   end
  
    it "should have the title 'Home'" do
      should have_selector('title',
                    text: full_title(''))
    end
  
    it "should not have a cutom page title" do
      should_not have_selector('title', text: '| Home')
    end
  end

  describe "Help page" do 


    it "should have the h1 'Help'" do
      visit help_path
      should have_selector('h1', text: 'Help')
    end

    it "should have the title 'Help'" do 
      visit help_path
      should have_selector('title',
                        text: full_title('Help'))
    end
  end

  describe "About page" do

    before {visit about_path}

    it "should have the h1 'About Us'" do
      should have_selector('h1', text: 'About Us')
    end

    it "should have the title 'About Us'" do
      should have_selector('title',
                    text: full_title('About Us'))
    end
  end

  describe "Contact" do

    before {visit contact_path}

    it "should have the h1 'Contact'" do
      should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      should have_selector('title',
                    text: full_title('Contact'))
    end
  end

end

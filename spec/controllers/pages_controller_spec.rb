require 'spec_helper'

describe PagesController do
  
  describe "GET 'home'" do
    it "Uspesno" do
      get 'home'
      response.should be_success
    end
    it "Mora biti pravi naslov"
     get 'home'
     response.should have_selector("title", :content => "Ruby on Rails Tutorial | Home")
     
  end
  
  it "Should have non-blank body" do
    get 'home'
    response.body.should_not =~ /<body>\s*<\/body/
  end
end
  
  describe "GET 'contact'" do
    it "Uspesno" do
      get 'contact'
      response.should be_success
    end
    it "Mora biti pravi naslov"
     get 'contact'
     response.should have_selector("title", :content => "Ruby on Rails Tutorial | Contact")
 end
end
  
  describe "GET 'about'" do
    it "Uspesno" do
      get 'about'
      response.should be_success
    end
    it "Mora biti pravi naslov"
     get 'about'
     response.should have_selector("title", :content => "Ruby on Rails Tutorial | About")
  end


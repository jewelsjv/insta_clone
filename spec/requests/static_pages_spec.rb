require 'spec_helper'

describe "StaticPages" do
	subject { page }
  	
  	describe "Home page" do
  		before { visit '/static_pages/home' }
  		it { should have_content('Home') }
  	end

  	describe "About page" do
  		before { visit '/static_pages/about' }
  		it { should have_content('About') }
  	end  	
end



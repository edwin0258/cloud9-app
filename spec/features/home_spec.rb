require 'rails_helper'


RSpec.feature "Home page should contain" do
    scenario "certain links and content should appear" do
        visit "/"
        
        expect(page).to have_content("Cloud9 App")
        expect(page).to have_content("Welcome to the app")
        expect(page).to have_link("Home")
        expect(page).to have_link("Sign in")
        expect(page).to have_link("Sign up")
        expect(page).to have_link("Posts")
    end
end
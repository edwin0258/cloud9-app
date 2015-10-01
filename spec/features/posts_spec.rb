require 'rails_helper'

RSpec.feature "Display all posts" do
    before do
        @p1 = Post.create(name: "Hello")
    end
    scenario do
        visit "/"
        click_link "posts"
        
        expect(page).to have_content("All posts")
    end
end
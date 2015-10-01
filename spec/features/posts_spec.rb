require 'rails_helper'

RSpec.feature "Display all posts" do
    before do
        @p1 = Post.create(title: "Hello", body: "This is a test post")
    end
    scenario do
        visit "/"
        click_link "posts"
        
        expect(page).to have_content("All posts")
        expect(page).to have_link(@p1.title)
        expect(page).to have_content(@p1.body)
    end
end
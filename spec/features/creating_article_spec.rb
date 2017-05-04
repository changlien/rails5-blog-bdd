require "rails_helper"

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do 
    # scenario:
    # 1. visit root page
    visit "/"
    
    # 2. click on new article
    click_link "New Article"
    
    # 3. fill in title
    fill_in 'Title', with: 'Creating a blog'
    
    # 4. fill in body
    fill_in 'Body', with: 'Lorem Ipsum'

    # 5. create article
    click_button 'Create Article'
    
    # expections:
    # 6. article has created
    expect(page).to have_content('Article has been created')
    
    # 7. article path
    expect(page.current_path).to eq(articles_path)
    
  end
end

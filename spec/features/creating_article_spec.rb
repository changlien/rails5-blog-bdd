require "rails_helper"

RSpec.feature "Creating Articles" do
  scenario "A user creates a new article" do 
    # scenario:
    # visit root page
    visit "/"
    
    # click on new article
    click_link "New Article"
    
    # fill in title
    fill_in 'Title', with: 'Creating a blog'
    
    # fill in body
    fill_in 'Body', with: 'Lorem Ipsum'

    # create article
    click_button 'Create Article'
    
    # expections:
    # article has created
    expect(page).to have_content('Article has been created')
    expect(page.current_path).to eq(article_path)
    
    # article path
  end
end

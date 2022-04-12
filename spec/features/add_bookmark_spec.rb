feature "#create" do
  scenario "adds bookmark to bookmark manager" do
    visit '/bookmarks'
    fill_in 'add', with: 'https://myspace.com/'
    fill_in 'title', with: 'MySpace'
    click_button 'Submit'
    expect(page).to have_content "https://myspace.com/"
    expect(page).to have_content 'MySpace'
  end
end

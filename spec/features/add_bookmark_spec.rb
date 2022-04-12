feature "#create" do
  scenario "adds bookmark to bookmark manager" do
    visit '/bookmarks'
    fill_in 'add', with: 'https://myspace.com/'
    click_button 'Submit'
    expect(page).to have_content "https://myspace.com/"
  end
end

feature "#create" do
  scenario "adds bookmark to bookmark manager" do
    visit '/bookmarks'
    fill_in 'add', with: 'https://myspace.com/'
    fill_in 'title', with: 'MySpace'
    click_button 'Submit'
    expect(page).to have_link('MySpace', href: 'https://myspace.com/')
  end
end

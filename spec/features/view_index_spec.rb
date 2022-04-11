feature "allows user" do
  scenario "to view index page" do
    visit '/'
    expect(page).to have_content "Hello World!"
  end
end

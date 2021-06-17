feature 'adding bookmarks' do
  scenario 'submitting new bookmarks on a form' do
    visit '/bookmarks/new'
    fill_in('URL', with: 'http://www.github.com')
    click_button('Submit')
    
    expect(page).to have_content 'http://www.github.com'
  end
end
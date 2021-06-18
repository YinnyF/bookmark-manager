# frozen_string_literal: true

feature 'deleting bookmarks' do
  scenario 'a user can delete a bookmark' do
    # add dummy data to delete
    Bookmark.create(url: 'http://www.github.com', title: 'Github')
    visit('/bookmarks')
    expect(page).to have_link('Github', href: 'http://www.github.com')

    first('.bookmark').click_button('Delete')

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Github', href: 'http://www.github.com')
  end
end

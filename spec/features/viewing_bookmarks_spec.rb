# frozen_string_literal: true
require 'pg'

feature 'Viewing bookmarks' do
  scenario 'seeing list of bookmarks' do
    # add the test data
    Bookmark.create(url: 'http://www.makersacademy.com')
    Bookmark.create(url: 'http://www.destroyallsoftware.com')
    Bookmark.create(url: 'http://www.google.com')
    Bookmark.create(url: 'http://www.bbc.co.uk')

    visit '/bookmarks'
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.bbc.co.uk'
  end
end

# frozen_string_literal: true
require 'pg'

feature 'Viewing bookmarks' do
  scenario 'seeing list of bookmarks' do
    # add the test data
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers')
    Bookmark.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy all software')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
    Bookmark.create(url: 'http://www.bbc.co.uk', title: 'BBC')

    visit '/bookmarks'
    expect(page).to have_link('Makers', href:'http://www.makersacademy.com')
    expect(page).to have_link('Destroy all software', href:'http://www.destroyallsoftware.com')
    expect(page).to have_link('Google', href:'http://www.google.com')
    expect(page).to have_link('BBC', href:'http://www.bbc.co.uk')
  end
end

# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  context '.all' do
    it 'displays all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url, title) VALUES('http://www.makersacademy.com', 'Makers');")
      connection.exec("INSERT INTO bookmarks (url, title)  VALUES('http://www.destroyallsoftware.com', 'Destroy all software');")
      connection.exec("INSERT INTO bookmarks (url, title)  VALUES('http://www.google.com', 'Google');")
      connection.exec("INSERT INTO bookmarks (url, title)  VALUES('http://www.bbc.co.uk', 'BBC');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.bbc.co.uk')
    end
  end

  context '.create' do
    it 'adds a new bookmark' do
      bookmark = Bookmark.create(url: 'http://www.github.com', title: 'Github')

      expect(bookmark['title']).to eq('Github')
      expect(bookmark['url']).to eq('http://www.github.com')
    end
  end
end

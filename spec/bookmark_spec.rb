# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  context '.all' do
    it 'displays all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.bbc.co.uk');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.bbc.co.uk')
    end
  end

  context '.create' do
    it 'adds a new bookmark' do
      Bookmark.create(url: 'http://www.github.com')

      expect(Bookmark.all).to include('http://www.github.com')
    end
  end
end

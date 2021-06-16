# frozen_string_literal: true

require 'bookmark'

describe Bookmark do
  context '.all' do
    it 'displays all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end
end

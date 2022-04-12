require 'pg'

def add_bookmarks
  Bookmark.create('http://www.makersacademy.com', 'Makers')
  Bookmark.create('http://www.destroyallsoftware.com', 'Destroy')
  Bookmark.create('http://www.google.com', 'Google')
end

require 'pg'

def add_bookmarks
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');
                    INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');
                    INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
end

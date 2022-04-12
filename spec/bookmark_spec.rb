require_relative '../lib/bookmark'

describe Bookmark do
  let(:bookmarks) { bookmarks = Bookmark.all }
 
  context 'when created' do
    it 'has a name' do
      expect(subject).to be_instance_of(Bookmark)
    end
  end

  context '#all' do
    it 'returns all bookmarks' do
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://www.google.com')
    end
  end

  context "#create" do
    it "adds a bookmark to the bookmark manager" do
      Bookmark.create('https://myspace.com')
      expect(bookmarks).to include "https://myspace.com"
    end
  end
end

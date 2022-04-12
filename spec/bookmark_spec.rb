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
      expect(bookmarks).to include({ link: "http://www.makersacademy.com", title: "Makers" },
                                   { link: "http://www.destroyallsoftware.com", title: "Destroy" },
                                   { link: "http://www.google.com", title: "Google" })
    end
  end

  context "#create" do
    it "adds a bookmark to the bookmark manager" do
      Bookmark.create('https://myspace.com', "MySpace")
      expect(bookmarks).to include({ link: 'https://myspace.com', title: "MySpace" })
    end
  end
end

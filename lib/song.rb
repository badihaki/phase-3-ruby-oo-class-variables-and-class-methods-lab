class Song
#
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize name, artist, genre
        @@count += 1
        @@genres << genre
        @@artists << artist
        #
        @name = name
        @artist = artist
        @genre = genre
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        # iterate over @@genres array
        # populate hash with key/value pairs
        # check if key exists, if it does, iterate by 1, if it doesn't, create a new key
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end
#
end
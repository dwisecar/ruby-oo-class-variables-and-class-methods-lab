class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@genres << genre
        @@artists << artist
        @@count += 1
    end 

    def self.genres
        @@genres.uniq
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.uniq.each do |genre|
            genre_hash[genre] = 0
        end
        @@genres.each do |i|
            genre_hash[i] += 1
        end
        genre_hash
    end

    def self.artist_count
        hash = {}
        @@artists.uniq.each do |artist|
            hash[artist] = 0
        end
        @@artists.each do |i|
            hash[i] += 1
        end
        hash
    end


end
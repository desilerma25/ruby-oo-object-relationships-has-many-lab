class Artist
    attr_accessor :name

    # empty array to track
    @@all = []

    # initialized w/ name
    # track w/ array 
    def initialize(name)
        @name = name
        @@all << self
    end

    # rtns array of all artist
    def self.all
        @@all
    end

    # takes arg. of song & assoc. song w/ artist
    # by telling song it belongs to artist
    def add_song(song)
        song.artist = self
    end

    # has many songs
    def songs
        # select songs that belong to artist
        Song.all.select {|song| song.artist == self}
    end

    # creates new song w/ it & assoc. the song & artist
    def add_song_by_name(name)
        # set song vari = to Song class .new w/ name of arg
        # assign song.artist = to artist class
        song = Song.new(name) 
        song.artist = self
    end

    # class met. rtns total songs assoc. to all artists
    def self.song_count
        # call Song class, call .all, .count 
        Song.all.count
    end
    
      
end
class Song
    # belongs to artist
    attr_accessor :name, :artist

    # class vari (@@all) set to array
    @@all = []

    # instatiate w/ name
    #pushes/shovels new inst. into class vari. called upon initialization
    def initialize(name)
        @name = name
        @@all << self
    end

    # class met., rtns array of all songs created
    def self.all
        @@all
    end

    # knows name of artist, nil if none
    #call to artist class for artist name
    def artist_name
        artist.name if artist
    end
    
end
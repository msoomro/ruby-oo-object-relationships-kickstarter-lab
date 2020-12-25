class Project

    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def backers
        ProjectBacker.all.select{ |pb| pb.project == self }.collect{ |pb| pb.backer }
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end
    
end
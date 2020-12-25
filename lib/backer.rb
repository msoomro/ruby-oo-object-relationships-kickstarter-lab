class Backer

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def backed_projects
        ProjectBacker.all.select{ |pb| pb.backer == self }.collect{ |pb| pb.project }
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

end
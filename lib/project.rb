class Project
  attr_reader :title, :backers
  @@all = []

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    backer.project(self) if !backer.backed_projects.include?(self)
    @backers << backer if !@backers.include?(project)
  end

  def self.all
    @@all
  end

end

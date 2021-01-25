class Project
  attr_reader :title, :backers
  @@all = []

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    backer.back_project(self) if !backer.backed_projects.include?(self)
    @backers << backer if !@backers.include?(backer)
  end

  def self.all
    @@all
  end

end

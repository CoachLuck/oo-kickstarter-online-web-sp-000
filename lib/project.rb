class Project
  attr_accessor :title
  attr_reader :backers
  @@all = []

  def initialize(title)
    @title = title
    @backers = []
    @@all << self
  end

  def add_backer(backer)
    @backers << backer
  end

  def self.all
    @@all
  end

  def self.getProject(title)
    Project.all.find {|proj| proj.title = title}
  end

end

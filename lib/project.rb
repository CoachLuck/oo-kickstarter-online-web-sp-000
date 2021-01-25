class Project
  attr_accessor :title
  attr_reader :backers
  @@all = []

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    backer.back_project(self)
    @backers << backer
  end

  def self.all
    @@all
  end

end

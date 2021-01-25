class Project
  attr_reader :backers
  @@all = []

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer
  end

  def self.all
    @@all
  end

end

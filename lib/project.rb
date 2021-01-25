class Project
  attr_reader :title, :backers
  @@all = []

  def initialize(title)
    @title = title
    @backers = []
  end

  def backers
    @backers.dupe.freeze
  end

  def add_backer(backer)
    @backers << backer
  end

  def self.all
    @@all
  end

end

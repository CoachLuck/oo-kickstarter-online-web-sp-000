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
    @backer << backer
  end

end

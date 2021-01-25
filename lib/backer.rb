class Backer
  attr_accessor :name
  attr_reader :backed_projects
  @@all = []

  def initialize(name)
    @name = name
    @backed_projects = []
    @@all << self
  end

  def back_project(project)
    proj = Project.getProject(project.name)
    @backed_projects << proj
  end

end

class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backed_projects
    @backed_projects.dup.freeze
  end

  def back_project(project)
    project.add_backer(self)
    @backed_projects << project
  end

end

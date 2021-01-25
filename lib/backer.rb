class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backend_projects
    @backend_projects.dup
  end

  def back_project(project)
    @backed_projects << project
  end

end

class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def backed_projects
    @backed_projects.dup
  end

  def back_project(project)
    project.add_backer(self) if !project.backers.include?(self)
    @backed_projects << project if !@backed_projects.include?(project)
  end

end

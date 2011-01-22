class IssueTemplatesController < ApplicationController
  unloadable
  before_filter :find_project

  def index
    @issue_templates = IssueTemplate.find(:all, :conditions => ["project_id = ?", @project.id])
  end

  def create
    @issue_template = IssueTemplate.new    
    @issue_template.project_id = @project.id
    # create new template
    if request.post?
      @issue_template.attributes = params[:issue_template]
      if @issue_template.save
        flash[:notice] = l(:notice_successful_create)
        redirect_to :action => "show", :id => @project,  :template_id => @issue_template.id
      end
    end
  end

  def destroy
  end

  def update
  end

  def show
    @issue_template = IssueTemplate.find(params[:template_id])
  end

  def load
  end
end

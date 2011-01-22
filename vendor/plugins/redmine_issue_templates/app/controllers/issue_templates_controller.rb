class IssueTemplatesController < ApplicationController
  unloadable
  before_filter :find_project

  def index
  end

  def create
    @issue_template = IssueTemplate.new    
    @issue_template.project = @project
    
    # create new template
    if request.post?
      @issue_template.attributes = params[:issue_template]
      if @issue_template.save
        flash[:notice] = l(:notice_successful_create)
        redirect_to :action => "show", :id => @issue_template.id
      end
    end
  end

  def destroy
  end

  def update
  end

  def show
  end

  def load
  end
end

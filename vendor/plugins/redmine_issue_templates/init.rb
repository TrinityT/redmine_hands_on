require 'redmine'

Redmine::Plugin.register :redmine_issue_templates do
  name 'Redmine Issue Templates plugin'
  author 'Toshiaki Takakura'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  requires_redmine :version_or_higher => '1.1.0'

  # 権限表示
  project_module :issue_templates do
    permission :edit_issue_templates, {:issue_templates => [:create, :update, :destroy]}
    permission :show_issue_templates, {:issue_templates => [:index, :show, :load]}
  end

  menu :project_menu, :issue_templates, { :controller => 'issue_templates', :action => 'index' }, :caption => 'テンプレ', :after => 'issues'

end

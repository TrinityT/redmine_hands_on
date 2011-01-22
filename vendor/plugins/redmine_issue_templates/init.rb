require 'redmine'

Redmine::Plugin.register :redmine_issue_templates do
  name 'Redmine Issue Templates plugin'
  author 'Toshiaki Takakura'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'
  requires_redmine :version_or_higher => '1.1.0'
end

require "redmine/wiki_formatting/common_mark/formatter"
require "redmine/wiki_formatting/common_mark/helper"
require "redmine/wiki_formatting/common_mark/html_parser"

Redmine::Plugin.register :common_mark do
  name "CommonMark plugin"
  version "0.2.0"
  author "Kenji Okimoto"
  description "This plugin provides CommonMark notation"
  url "https://github.com/okkez/redmine_common_mark"
  author_url "https://github.com/okkez/redmine_common_mark"
end

Redmine::WikiFormatting.map do |format|
  format.register :commonmark,
                  Redmine::WikiFormatting::CommonMark::Formatter,
                  Redmine::WikiFormatting::CommonMark::Helper,
                  Redmine::WikiFormatting::CommonMark::HtmlParser,
                  label: "CommonMark"
end

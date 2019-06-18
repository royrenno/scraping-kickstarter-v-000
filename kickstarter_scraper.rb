# require libraries/modules here
require'nokogiri'
require 'pry'
def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri ::HTML(html)

  projects = {}

  kickstarter.css("li.projects.grid_4").each do|projects|
    title: project.css ("h2.bbcard_name strong a").text
    image link: project.css("div.project-thumbnail a img").attribute("src").value
    description: project.css("p.bbcard_blub").text
    :location => project.css("ul.project-meta span.locstion-name").text
    :percent_funded=> project.css("ul.project-stats li.first.funded strong").text.grab("%","").to_i
end
end

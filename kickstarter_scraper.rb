# require libraries/modules here
require'nokogiri'

def create_project_hash
  # write your code here
  html = File.read('fixtures/kickstarter.html')
  kickstarter = Nokogiri ::HTML(html)

  projects = {}

  kickstarter.css("li.projects.grid_4").each do|projects|
    title: project.css ("h2.bbcard_name strong a").text
    image link: project.css("div.project-thumbnail a img").attribute("src").value
    description: project.css("p.bbcard_blub").text
end
end

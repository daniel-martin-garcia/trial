# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
project = Project.first
project.entries.create hours: 50000, minutes:1, comments: "bla bla bla", date:"Tue, 27 Jul -2014"



# entry = Entry.new
# Entry.create project_id: 1, date: "24/07/2014", hours: 3, minutes: 20, comment: "Movies con Ruby la semana de Rafa"
# Entry.create project_id: 2, date: "16/07/2014", hours: 5, minutes: 5, comment: "Maps con JavaScript la semana de Javi"
# Entry.create project_id: 3, date: "23/07/2014", hours: 2, minutes: 15, comment: "Mars Rover con Ruby la semana de Rafa"
# Entry.create project_id: 4, date: "25/07/2014", hours: 5, minutes: 5, comment: "Chess con Ruby la semana de Rafa"
# Entry.create project_id: 5, date: "24/07/2014", hours: 50, minutes: 20, comment: "Movies con Ruby la semana de Rafa"



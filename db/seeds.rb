# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

unless Group.any?
  Group.create(name: "Основы ruby")
end

unless Lab.any?
  group = Group.first
  Lab.create(title: "Лабораторная №1", group: group, content_path: "placeholder")
end

unless Task.any?
  lab = Lab.first
  lab.tasks.create(title: "Задание 1", content_path: "placeholder1")
end
require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Inserting into Teachers
# 18500.times do
#   full_name = Faker::Name.name_with_middle.tr("'", "")
#   first_name, second_name, patronymic = full_name.split 
#   sql = "INSERT INTO teachers (first_name , second_name, patronymic) VALUES ('#{first_name}', '#{second_name}', '#{patronymic}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

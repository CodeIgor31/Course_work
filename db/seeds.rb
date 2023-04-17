require 'faker'

#Inserting into disciplines
# 78.times do 
#   name = Faker::Lorem.unique.word
#   sql = "INSERT INTO disciplines (name) VALUES ('#{name}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

# Inserting into Teachers
# i = 1
# 20010.times do
#   if i > 100 
#     i = 1
#   end
#   discipline_id = i
#   i += 1
#   full_name = Faker::Name.name_with_middle.tr("'", "")
#   first_name, second_name, patronymic = full_name.split 
#   sql = "INSERT INTO teachers (first_name , second_name , patronymic , discipline_id) VALUES ('#{first_name}', '#{second_name}', '#{patronymic}', '#{discipline_id}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

# Inserting into students
# letters = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
# numbers = %w[1 2 3 4 5 6 7 8 9]
# 1300000.times do 
#   full_name = Faker::Name.name_with_middle.tr("'", "")
#   first_name, second_name, patronymic = full_name.split 
#   course = rand(1..5)
#   group_code = "#{letters.sample}#{letters.sample}#{numbers.sample}-#{numbers.sample}#{numbers.sample}" 
#   sql = "INSERT INTO students (first_name , second_name , patronymic , course , group_code) VALUES ('#{first_name}', '#{second_name}', '#{patronymic}', '#{course}', '#{group_code}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

#Inserting into questions
# i = 1
# 20000.times do
#   question = Faker::Lorem.unique.question
#   if i > 100
#     i = 1
#   end
#   parts = ["A", "B"]
#   discipline_id = i
#   i += 1
#   part = parts.sample
#   sql = "INSERT INTO questions (question , discipline_id , part) VALUES ('#{question}', '#{discipline_id}', '#{part}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

#Inserting into variants
# k = 1
# counter = 0
# var_num = 1
# 100.times do
#   presql = "select * from questions where discipline_id = '#{k}'" 
#   res = ActiveRecord::Base.connection.exec_query(presql)
#   res.each do |hash|
#     if counter == 10 then
#       counter = 0
#       var_num += 1
#     end
#     question_id = hash["id"]
#     sql = "INSERT INTO variants (var_num , question_id , discipline_id) VALUES ('#{var_num}', '#{question_id}', '#{k}')  "
#     ActiveRecord::Base.connection.exec_query(sql)
#     counter += 1
#   end
#   k += 1
# end
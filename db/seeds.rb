require 'faker'

# Inserting into Teachers

# 20010.times do
#   full_name = Faker::Name.name_with_middle.tr("'", "")
#   first_name, second_name, patronymic = full_name.split 
#   sql = "INSERT INTO teachers (first_name , second_name, patronymic) VALUES ('#{first_name}', '#{second_name}', '#{patronymic}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

#Inserting into disciplines
# i = 1
# 22000.times do 
#   name = Faker::Educator.subject
#   if i > 20010
#     i = 1
#   end
#   teacher_id = i
#   i += 1
#   sql = "INSERT INTO disciplines (name , teacher_id) VALUES ('#{name}', '#{teacher_id}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

#Inserting into students
# letters = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z]
# numbers = %w[1 2 3 4 5 6 7 8 9]
# 3000000.times do 
#   full_name = Faker::Name.name_with_middle.tr("'", "")
#   first_name, second_name, patronymic = full_name.split 
#   course = rand(1..5)
#   group_code = "#{letters.sample}#{letters.sample}#{numbers.sample}-#{numbers.sample}#{numbers.sample}" 
#   sql = "INSERT INTO students (first_name , second_name , course , group_code , patronymic) VALUES ('#{first_name}', '#{second_name}', '#{course}', '#{group_code}', '#{patronymic}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end
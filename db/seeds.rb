require 'faker'

# Inserting into Teachers

# 18500.times do
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
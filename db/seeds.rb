require 'faker'

# Inserting into Teachers

# 18500.times do
#   full_name = Faker::Name.name_with_middle.tr("'", "")
#   first_name, second_name, patronymic = full_name.split 
#   sql = "INSERT INTO teachers (first_name , second_name, patronymic) VALUES ('#{first_name}', '#{second_name}', '#{patronymic}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end

#Inserting into disciplines

# 22000.times do 
#   name = Faker::Educator.subject
#   teacher_id = rand(1..20010)
#   sql = "INSERT INTO disciplines (name , teacher_id) VALUES ('#{name}', '#{teacher_id}')  "
#   ActiveRecord::Base.connection.exec_query(sql)
# end
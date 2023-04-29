module AttemptsHelper
  def all_students
    sql = "select students.id, first_name, second_name, patronymic from persons, students where students.person_id = persons.id and students.date_of_otchislenie is NULL order by students.id desc limit 500"
    res = ActiveRecord::Base.connection.exec_query(sql)
    @fios = []
    res.each do |el|
      fio = "#{el["second_name"]} #{el["first_name"]} #{el["patronymic"]}"
      @fios.push([fio, el["id"]])
    end
    @fios
  end
end

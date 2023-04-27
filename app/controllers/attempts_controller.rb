class AttemptsController < ApplicationController
  include AttemptsHelper
  before_action :all_students
  def index
    sql = "select * from attempts order by id desc limit 10"
    @attempts = ActiveRecord::Base.connection.exec_query(sql)
  end

  def create
  end

  def add_student
    @@student_id = params[:student_id]
  end

  def add_discipline
  end

  def add_dis
    @@discipline_id = params[:discipline_id]
  end

  def add_variant
    @res_vars = []
    sql = "select distinct variants.id, variants.var_name from variants, questions where questions.discipline_id = #{@@discipline_id} and questions.id = variants.question_1"
    res = ActiveRecord::Base.connection.exec_query(sql)
    res.each do |el|
      @res_vars.push([el["var_name"], el["id"]])
    end
  end

  def add_var
    @@variant_id = params[:variant_id]
  end

  def add_teacher
    sql = "select teachers_disciplines.id, second_name, first_name, patronymic from teachers, persons, teachers_disciplines where teachers.person_id = persons.id and 
    teachers_disciplines.teacher_id = teachers.id and teachers_disciplines.discipline_id = '#{@@discipline_id}'"
    res = ActiveRecord::Base.connection.exec_query(sql)
    @teachers = []
    res.each do |el|
      fio = "#{el["second_name"]} #{el["first_name"]} #{el["patronymic"]}"
      @teachers.push([fio, el["id"]])
    end
  end

  def add_tea
    @@tdis = params[:teacher_id]
  end

  def add_other
  end

  def add_oth
    @attempt = Attempt.create({student_id: @@student_id, variant_id: @@variant_id, teacher_discipline_id: @@tdis, attempt_num: params[:attempt_num], mark: params[:mark], date_of_exam: params[:date_of_exam]})
    return unless @attempt.save
    redirect_to '/attempts'
  end

  def destroy
    @attempt = Attempt.find_by(id: params[:id])
    @attempt.destroy
    redirect_to '/attempts'
  end

end

class TeachersDisciplinesController < ApplicationController
  def index
    sql = "select * from teachers_disciplines"
    @teach_disc = ActiveRecord::Base.connection.exec_query(sql)
  end
end

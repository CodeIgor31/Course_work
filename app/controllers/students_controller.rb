class StudentsController < ApplicationController
  def index
    sql = "select * from students order by date_of_entering limit 500"
    @students = ActiveRecord::Base.connection.exec_query(sql)
  end
end

class TeachersController < ApplicationController
  def index
    sql = "select * from teachers"
    @teachers = ActiveRecord::Base.connection.exec_query(sql)
  end
end

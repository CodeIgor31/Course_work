class AttemptsController < ApplicationController
  def index
    sql = "select * from attempts order by date_of_exam limit 500"
    @attempts = ActiveRecord::Base.connection.exec_query(sql)
  end
end

class AttemptsController < ApplicationController
  def index
    sql = "select * from attempts order by date_of_exam limit 5000"
    @attempts = ActiveRecord::Base.connection.exec_query(sql)
  end
end

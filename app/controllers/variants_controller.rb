class VariantsController < ApplicationController
  def index
    sql = "select * from variants order by id limit 2000"
    @variants = ActiveRecord::Base.connection.exec_query(sql)
  end
end

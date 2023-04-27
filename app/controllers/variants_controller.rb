class VariantsController < ApplicationController
  def index
    sql = "select * from variants order by id desc limit 500"
    @variants = ActiveRecord::Base.connection.exec_query(sql)
  end

  def create
  end

  def add
    @curr = Discipline.find_by(id: params[:discipline_id])
    @name = "#{@curr.name}_#{Variant.where("var_name like ?", "%#{@curr.name}%").count + 1}"
    Question.where({discipline_id: @curr.id, part: 'A'}).sample(1).each {|el| @question_1 = el.id}
    Question.where({discipline_id: @curr.id, part: 'B'}).sample(1).each.each {|el| @question_2 = el.id}
    @variant = Variant.create({var_name: @name, question_1: @question_1, question_2: @question_2})
    redirect_to '/variants'
  end


  def destroy
    @variant = Variant.find_by(id: params[:id])
    @variant.destroy
    redirect_to '/variants'
  end

end

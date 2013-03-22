class StudentsController < ApplicationController
def index
	@students=Student.all
	respond_to do |format|
	format.html # index.html.erb
	end

end#index
def create
    @students = Student.new(params[:student])
    respond_to do |format|
    if @students.save
    format.html {redirect_to @student, notice: 'Student has been created successfully' }
    end#if
       end#respond
end#create
def new
	 @students = Student.new
end#new

def show
       @students = Student.find(:all)
       respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @student }
       end#do
end#show
end#class


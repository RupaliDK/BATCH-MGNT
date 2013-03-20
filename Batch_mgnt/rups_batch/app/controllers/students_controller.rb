class StudentsController < ApplicationController
def index
	@students=Student.all
	respond_to do |format|
	format.html # index.html.erb
	end

end#index
def create
    @student = Student.new(params[:student])
    respond_to do |format|
	if @student.save
        format.html {redirect_to @student, notice: 'Student has been created successfully' }
       end#if
       end#respond
end#create
def new
	 @student = Student.new
end#new
end#class

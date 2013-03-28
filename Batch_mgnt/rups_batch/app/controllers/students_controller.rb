class StudentsController < ApplicationController
def index
	@students = Student.all
	respond_to do |format|
	    format.html # index.html.erb
	end

end#index

def create
    @students = Student.new(params[:student])
    respond_to do |format|
    if @students.save
    format.html {redirect_to student_path(@students), notice: 'Student has been created successfully' }
    end#if
       end#respond
end#create

def new
	 @students = Student.new
	 @students.grades.build
end#new

def show
       @students = Student.find(params[:id])
       respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @students }
       end#do
end#show

def edit
  @students = Student.find(params[:id])
end

def update
  @students = Student.find(params[:id])
 
  respond_to do |format|
    if @students.update_attributes(params[:student])
      format.html  { redirect_to(@students,
                    :notice => 'Record was successfully updated.') }
      format.json  { head :no_content }
    else
      format.html  { render :action => "edit" }
      format.json  { render :json => @students.errors,
                    :status => :unprocessable_entity }
    end
  end
end

def destroy
  @students = Student.find(params[:id])
  @students.destroy
 
  respond_to do |format|
    format.html { redirect_to students_url }
    format.json { head :no_content }
  end#do
end#destroy
end

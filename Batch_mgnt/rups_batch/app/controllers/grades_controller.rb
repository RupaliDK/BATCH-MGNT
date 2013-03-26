class GradesController < ApplicationController
def new
	@grades=Grade.new
	#@grades = Grade.find(:all)

end


def create
    @grades = Grade.new(params[:grade])
    respond_to do |format|
    if @grades.save
    format.html {redirect_to grade_path(@grades), notice: 'grade has been created successfully' }
    end#if
       end#respond
end#create

def new
	 @grades = Grade.new
end#new

def show
       @grades = Grade.find(params[:id])
       respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @grades }
       end#do
end#show

def edit
  @grades = Grade.find(params[:id])
end

def update
@grade = Grade.find(params[:id])
respond_to do |format|
if @grade.update_attributes(params[:grade])
format.html { redirect_to(@grade,
:notice => 'Grade was successfully updated.') }
format.json { head :no_content }
else
format.html { render :action => "edit" }
format.json { render :json => @grade.errors,
:status => :unprocessable_entity }
end
end
end


end

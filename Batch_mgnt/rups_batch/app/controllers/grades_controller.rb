class GradesController < ApplicationController
def new
	@grades=Grade.new
	#@grades = Grade.find(:all)

end

#def create
	#@grade=Grade.new(params[:grade])
	#if @grade.save
	#redirect_to new_grade_path
#end
#end

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


end

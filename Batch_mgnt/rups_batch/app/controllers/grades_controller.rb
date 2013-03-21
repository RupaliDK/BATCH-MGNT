class GradesController < ApplicationController
def new
	@grade=Grade.new
	@grades = Grade.find(:all)

end

def create
	@grade=Grade.new(params[:grade])
	if @grade.save
	redirect_to new_grade_path
end
end
end

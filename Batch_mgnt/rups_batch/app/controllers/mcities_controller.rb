class McitiesController < ApplicationController
def new
	@mcitie=Mcitie.new
	@mcities = Mcitie.find(:all)

end

def create
	@mcitie=Mcitie.new(params[:mcitie])
	if @mcitie.save
	redirect_to new_mcitie_path
end
end
end



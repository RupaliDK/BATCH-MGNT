class McitiesController < ApplicationController
def index
	@mcities=Mcitie.all
	respond_to do |format|
	format.html # index.html.erb
	end

end#index


def create
    @mcities = Mcitie.new(params[:mcitie])
    respond_to do |format|
    if @mcities.save
    format.html {redirect_to mcity_path(@mcities), notice: 'city has been created successfully' }
    end#if
       end#respond
end#create
def new
	 @mcities = Mcitie.new
end#new

def show
       @mcities = Mcitie.find(params[:id])
       respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @mcities}
       end#do
end#show
def edit
  @mcities = Mcitie.find(params[:id])
end

def update
    @mcities = Mcitie.find(params[:id])

    respond_to do |format|
      if @mcities.update_attributes(params[:mcitie])
        format.html { redirect_to mcities_path, notice: 'city was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mcities.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mcities = Mcitie.find(params[:id])
    @mcities.destroy

    respond_to do |format|
      format.html { redirect_to mcities_url }
      format.json { head :no_content }
    end
  end

end


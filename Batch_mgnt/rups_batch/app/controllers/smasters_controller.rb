class SmastersController < ApplicationController
def index
	@smasters = Smaster.all
	respond_to do |format|
	    format.html # index.html.erb
	end#do

end#index

def create
    @smasters = Smaster.new(params[:smaster])
    respond_to do |format|
    if @smasters.save
    format.html {redirect_to smaster_path(@smasters), notice: 'smasters has been created successfully' }
    end#if
       end#respond
end#create

def new
	 @smasters = Smaster.new
end#new

def show
       @smasters = Smaster.find(params[:id])
       respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @smasters }
       end#do
end#show

def edit
  @smasters = Smaster.find(params[:id])
end

def update
  @smasters = Smaster.find(params[:id])
 
  respond_to do |format|
    if @smasters.update_attributes(params[:smaster])
      format.html  { redirect_to(@smasters,
                    :notice => 'Record was successfully updated.') }
      format.json  { head :no_content }
    else
      format.html  { render :action => "edit" }
      format.json  { render :json => @smasters.errors,
                    :status => :unprocessable_entity }
    end
  end
end

def destroy
  @smasters = Smaster.find(params[:id])
  @smasters.destroy
 
  respond_to do |format|
    format.html { redirect_to smasters_url }
    format.json { head :no_content }
  end
end


end

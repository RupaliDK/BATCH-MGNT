class McitiesController < ApplicationController

def index
	@mcities = Mcitie.all
	respond_to do |format|
	format.html # index.html.erb
	end#do

end#index

def new
	@mcities = Mcitie.new
end#new

def create
	@mcities = Mcitie.new(params[:mcitie])
      respond_to do |format|
      if @mcities.save
      format.html {redirect_to mcity_path(@mcities), notice: 'cities has been created successfully' }
     end #do
       end#if
end#create

def show
       @mcities = Mcitie.find(params[:id])
       respond_to do |format|
       format.html # show.html.erb
       format.json { render json: @mcities }
       end#do
end#show

def edit
  @mcities = Mcitie.find(params[:id])
end#edit

def update
  @mcities = Mcitie.find(params[:id])
 
  respond_to do |format|
    if @mcities.update_attributes(params[:mcities])
      format.html  { redirect_to(@mcities,
                    :notice => 'Record was successfully updated.') }
      format.json  { head :no_content }
    else
      format.html  { render :action => "edit" }
      format.json  { render :json => @mcities.errors,
                    :status => :unprocessable_entity }
    end#if
  end#do
end#update

def destroy
  @mcities = Mcitie.find(params[:id])
  @mcities.destroy
 
  respond_to do |format|
    format.html { redirect_to mcities_url }
    format.json { head :no_content }
  end#do
end#destroy

end#class


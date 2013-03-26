class BatchesController < ApplicationController
def new
@batch=Batch.new
@batches = Batch.find(:all)

end


def create
@batch = Batch.new(params[:batch])
respond_to do |format|
if @batch.save
format.html { redirect_to(@batch,
:notice => 'Batch was successfully created.') }
format.json { render :json => @batch,
:status => :created, :location => @batch }
else
format.html { render :action => "new" }
format.json { render :json => @batch.errors,
:status => :unprocessable_entity }
end#if
end#do
end#create

def show
@batches=Batch.find(params[:id])
respond_to do |format|
format.html # show.html.erb
format.json { render json: @batchess }
end#do
end#show

def update
@batch = Batch.find(params[:id])
respond_to do |format|
if @batch.update_attributes(params[:batch])
format.html { redirect_to(@batch,
:notice => 'Batch was successfully updated.') }
format.json { head :no_content }
else
format.html { render :action => "edit" }
format.json { render :json => @batch.errors,
:status => :unprocessable_entity }
end#if
end#do
end#update

def edit
@batch = Batch.find(params[:id])
end#edit

def destroy
@batch = Batch.find(params[:id])
@batch.destroy
respond_to do |format|
format.html { redirect_to batches_url }
format.json { head :no_content }
end#do
end#destroy


end


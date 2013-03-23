class BatchesController < ApplicationController
def new
@batch=Batch.new
@batches = Batch.find(:all)

end

def create
@batch=Batch.new(params[:batch])
if @batch.save
redirect_to new_batch_path
end

def new
@students=Student.new
end

def show
@batches=Batch.find(params[:id])
respond_to do |format|
format.html # show.html.erb
format.json { render json: @batchess }
end#do

end
end
end


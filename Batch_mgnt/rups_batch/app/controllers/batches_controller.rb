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
end
end


class BatchesController < ApplicationController

  def show
    @batches = Batch.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @batches }
    end
  end

  def new
    @batches = Batch.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @batches }
    end
  end
  def edit
    @batches = Batch.find(params[:id])
  end

  def create
    @batches = Batch.new(params[:batch])

    respond_to do |format|
      if @batches.save
        format.html { redirect_to batches_path, notice: 'Batch was successfully created.' }
        format.json { render json: @batches, status: :created, location: @batches }
      else
        format.html { render action: "new" }
        format.json { render json: @batches.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @batches = Batch.find(params[:id])

    respond_to do |format|
      if @batches.update_attributes(params[:batch])
        format.html { redirect_to batches_path, notice: 'Batch was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @batches.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @batches = Batch.find(params[:id])
    @batches.destroy

    respond_to do |format|
      format.html { redirect_to batches_url }
      format.json { head :no_content }
    end
  end
end


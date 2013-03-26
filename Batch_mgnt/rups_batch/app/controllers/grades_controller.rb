class GradesController < ApplicationController
  def index
    @grades = Grade.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grades }
    end
  end

  def show
    @grades = Grade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grades }
    end
  end

  def new
    @grades = Grade.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grades }
    end
  end
  def edit
    @grades = Grade.find(params[:id])
  end

  def create
    @grades = Grade.new(params[:grade])

    respond_to do |format|
      if @grades.save
        format.html { redirect_to grades_path, notice: 'Grade was successfully created.' }
        format.json { render json: @grades, status: :created, location: @grades }
      else
        format.html { render action: "new" }
        format.json { render json: @grades.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @grades = Grade.find(params[:id])

    respond_to do |format|
      if @grades.update_attributes(params[:grade])
        format.html { redirect_to grades_path, notice: 'Grade was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @grades.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @grades = Grade.find(params[:id])
    @grades.destroy

    respond_to do |format|
      format.html { redirect_to grades_url }
      format.json { head :no_content }
    end
  end
end


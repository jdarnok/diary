class SchoolClassesController < ApplicationController

  before_action :set_school_class, only: [:edit, :update, :show, :destroy]
  before_action :authenticate_user!
  def index
    if current_user.has_role? :admin
  @school_classes = SchoolClass.all

    elsif current_user.has_role? :teacher
     @school_classes = SchoolClass.where(teacher_id: current_user.id)
    elsif current_user.has_role? :student
      @school_classes = SchoolClass.find(current_user.school_class_id)

    end
  end

  def show
  @students = User.where(school_class: @school_class)
  end

  def create
    @school_class = SchoolClass.create(school_class_params)

    respond_to do |format|
      if @school_class.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @school_class.errors.full_messages,
                             status: :unprocessable_entity }
      end

    end
  end

  def new
    @school_class = SchoolClass.new
  end

  def edit

  end

  def update
    respond_to do |format|
      if @school_class.update(school_class_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @school_class.errors.full_messages,
                             status: :unprocessable_entity }
      end

    end
  end

  def destroy
    @school_class.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to school_classes_url }
      format.json { head :no_content }
    end
  end

  private

  def set_school_class
    @school_class = SchoolClass.find(params[:id])
  end

  def school_class_params
    params.require(:school_class).permit(:name)
  end

end

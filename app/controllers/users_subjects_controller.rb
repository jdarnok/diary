class UsersSubjectsController < ApplicationController
  before_action :set_grade, only: [:show, :edit, :update, :destroy]

  def index
    @grades = UsersSubject.where(user_id: params[:user],
    subject_id: params[:subject]).flatten
    @user = User.find(params[:user])
    @subject = Subject.find(params[:subject])
    session[:user] = @user.id
    session[:subject] = @subject.id
  end

  def edit
  end

  def show
  end

  def new
    @grade = UsersSubject.new
  end

  def create
    user = User.find(session[:user])
    subject = Subject.find(session[:subject])
    @grade = UsersSubject.create(value: grade_params[:value], subject: subject,
    user: user, description: grade_params[:description])

    respond_to do |format|
      if @grade.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @grade.errors.full_messages,
                             status: :unprocessable_entity
                             }
      end

    end
  end


    def destroy
      @grade.destroy
      respond_to do |format|
        format.js
        format.html { redirect_to users_subjects_url }
        format.json { head :no_content }
      end
    end

  def update
    respond_to do |format|
      if @grade.update(grade_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @grade.errors.full_messages,
                             status: :unprocessable_entity }
      end

    end
  end

  private

  def set_grade
    @grade = UsersSubject.find(params[:id])
  end

  def grade_params
    params.require(:users_subject).permit(:value, :description)
  end


end

class StoriesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @story = @user.stories.new
  end

  def create
    @user = User.find(params[:user_id])
    @story = @user.stories.new(story_params)
    if @story.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @story = Story.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @story = Story.find(params[:id])
    if @story.update(story_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
  def story_params
    params.require(:story).permit(:title)
  end
end

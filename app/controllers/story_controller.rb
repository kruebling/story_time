class StoriesController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @story = @user.stories.new
  end

  def create
    @user = List.find(params[:user_id])
    @story = @user.storys.new(story_params)
    if @story.save
      redirect_to user_path(@story.user)
    else
      render :new
    end
  end

  private
  def story_params
    params.require(:story).permit(:title)
  end
end

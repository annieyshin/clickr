class CommentsController < ApplicationController
  def index
    @photo = Comment.find(params[:photo_id])
    @comments = Comment.all
  end

  def new
    @photo = Comment.find(params[:photo_id])
    @comment = @photo.comments.new
  end

  def create
   @photo = Comment.find(params[:photo_id])
   @comment = @photo.comments.new(comment_params)
   if @comment.save
     redirect_to photo_path(@comment.photo)
   else
     render :new
   end
 end

 def show
   # @comment = Comment.find(params[:id])
   @photo = Comment.find(params[:photo_id])
   # @not_done_comments = Comment.not_completed
   # @frogs = Comment.completed
   # @frogs1 = @frogs.where(photo_id: @photo.id)
   # @not_done_comments1 = @not_done_comments.where(photo_id: @photo.id)
   # byebug
   render "photos/show"
 end

 def edit
   @comment = Comment.find(params[:id])
   @photo = Comment.find(params[:photo_id])
   render :edit
 end

 def update
   @comment = Comment.find(params[:id])
   if @comment.update(comment_params)
     redirect_to photo_comment_path
   else
     render :edit
   end
 end

 def destroy
  @comment = Comment.find(params[:id])
  @comment.destroy
  redirect_to photo_path(@comment.photo)
end

private
 def comment_params
   params.require(:comment).permit(:content, :user_id, :photo_id)
 end

end

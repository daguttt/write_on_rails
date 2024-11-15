class CommentsController < ApplicationController
  def create
    post = Post.find(comment_params[:post_id].to_i)
    post.comments.create(comment_params.merge({ user_id: current_user.id }))

    respond_to do |format|
      format.html { redirect_to post, notice: "Comment was successfully created." }
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:text, :post_id)
    end
end

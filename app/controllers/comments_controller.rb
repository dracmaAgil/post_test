class CommentsController < ApplicationController
  
  def new
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new()
    respond_to do |format|
      format.js { render template: 'comments/comment_modal.js.erb' }
    end
  end

  def create
    @post = Post.find(params[:post_id])
    begin
      @comment = @post.comments.new(comment_params)
      if @comment.save
        flash[:notice] = 'comment created'
      else
        flash[:notice] = 'Comment not created'
      end
    rescue Exception => e
      flash[:error] = e.message 
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to root_url, notice: 'Comment deleted'
  end
  private

    def comment_params
      params.require(:comment).permit( 
        :body
      )
    end
end

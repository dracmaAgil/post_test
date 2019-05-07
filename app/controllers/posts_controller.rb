class PostsController < ApplicationController

  def index
    @posts = Post.all.order('created_at DESC')
  end

  def new
    @post = Post.new
    respond_to do |format|
      format.js { render template: 'posts/post_modal.js.erb' }
    end
    
  end

  def create
    @post = Post.new(post_params)
    begin
      if @post.save
        flash[:notice] = 'Post created'
        # redirect_to root_url, notice: 'Created post'
      else
        flash[:notice] = 'Post not created'
        # redirect_to new_post_path, flash: { error: @post.errors.full_messages.to_sentence }
      end
    rescue Exception => e
      flash[:error] = e.message 
      # redirect_to new_post_path, flash: { error: e.message }
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
    respond_to do |format|
      format.js { render template: 'posts/post_modal.js.erb' }
    end
  end

  def update
    begin
      @post = Post.find(params[:id])
      if @post.update(post_params)
        redirect_to root_url, notice: 'updated post'
      else
        flash[:notice] = 'Post not updated'
        redirect_to edit_post_path, flash: { error: @post.errors.full_messages.to_sentence }
      end
    rescue Exception => e
      redirect_to edit_post_path, flash: { error: e.message }
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to root_url, notice: 'Post deleted'
  end

  private

    def post_params
      params.require(:post).permit(
        :title, 
        :body
      )
    end
end

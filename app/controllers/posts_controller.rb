class PostsController < ApplicationController
  allow_unauthenticated_access only: [:index, :show]

  before_action :set_post, only: [:show, :edit, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/:id
  def show
    @post = Post.friendly.find(params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts
  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to post_path(@post), notice: "Post was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /posts/:id/edit
  def edit
  end

  # PATCH/PUT /posts/:id
  def update
    if @post.update(post_params)
      redirect_to post_path(@post), notice: "Post was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /posts/:id
  def destroy
    @post.destroy
    redirect_to posts_path, notice: "Post was successfully deleted."
  end

  private

  # Find post by id for actions that need it
  def set_post
    @post = Post.friendly.find(params[:id])
  end

  # Strong parameters to whitelist fields
  def post_params
    params.require(:post).permit(:title, :content)
  end
end
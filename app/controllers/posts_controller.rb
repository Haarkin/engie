class PostsController < ApplicationController
    before_action :authenticate_user!
    def index
        @posts = Post.all
    end
    def new
    end
    def show
        @post=Post.find(params[:id])
    end
    def create
       # render plain: params[:post].inspect
       @post = current_user.posts.build(post_params)
       @post.save
       redirect_to @post
    end
    private def post_params
        params.require(:post).permit(:name, :desc, :category_id, :user_id)
    end
end

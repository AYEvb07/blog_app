class PostsController < ApplicationController
    
    def index
        @posts = Post.all
    end
    
    
    def show
        @post = Post.find(params[:id])   # To find the post we're searching for
    end
    
    
    def new
        @post = Post.new
    end
    
    
    def edit
        @post = Post.find(params[:id])
    end
    
    
    def create
        @post = Post.new(post_params)
        
       if @post.save
            redirect_to @post
       else
           render 'new'
       end
    end
    
    
    def update
         @post = Post.find(params[:id])
        
         if @post.update(post_params)
            redirect_to @post
         else
            render 'edit'
         end
    end
    
    
    def destroy
        
    end
    
    
    private
        def post_params
           params.require(:post).permit(:title, :body)    
        end
    
    end

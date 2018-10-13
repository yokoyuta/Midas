class PostsController < ApplicationController

  def favorite
    @posts = Post.where(user_id: current_user.id)
    @posts = @posts.all.order(created_at: :desc)
    @favorites = Favorite.where(user_id: current_user.id)
  end



  def index
    @posts = Post.where(user_id: current_user.id)
    @posts = @posts.all.order(created_at: :desc)
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(
      content: params[:content],
      user_id: current_user.id
    )
    if @post.save
      flash[:notice] = "投稿を作成しました"
      redirect_to("/posts/index")
    else
      render("posts/new")
    end
    puts"testtest"
    puts params[:content]
    puts params[:content].size
    status = Status.find_by(user_id: current_user.id)
    puts status
    puts status.gold
    puts status.experience_point


  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    @post.content = params[:content]
    if @post.save
      flash[:notice] = "投稿を編集しました"
      redirect_to("/posts/index")
    else
      render("posts/edit")
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    flash[:notice] = "投稿を削除しました"
    redirect_to("/posts/index")
  end

  def ensure_correct_user
     @post = Post.find_by(id:params[:id])
     if @post.user_id != @current_user.id
       flash[:notice] = "権限がありません"
       redirect_to("/posts/index")
     end
  end


end

class AvatarsController < ApplicationController
  before_action :authenticate_user!

  def index
  	@avatars = Avatar.all
  end

  def show
  end
 
  def new
    @avatar = Avatar.new
  end
   
  def edit
  end
 
  def create
  	# @avatar = current_user.avatar.new(avatar_params)
  	# why idea可以這樣寫這個不行ＱＱ
  	@avatar = Avatar.new(avatar_params)
    # 明明就差不多意思啊哭哭ㄇ
  	@avatar.user_id = current_user.id
    # ↑上面這段抓目前登入的user id 啦
    current_user.avatar_id = @avatar.id    

    respond_to do |format|
      if @avatar.save
        format.html { redirect_to ideas_path , notice: 'Avatar was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @avatar.errors, status: :unprocessable_entity }
      end
    end
  end
 
  def update
    respond_to do |format|
      if @avatar.update(avatar_params)
        format.html { redirect_to @idea, notice: 'Avatar was successfully updated.' }
        format.json { render :index, location: @idea  }
      else
        format.html { render :new }
        format.json { render json: @avatar.errors, status: :unprocessable_entity }
      end
    end
  end
 
  def destroy
  end

  private

  def avatar_params
    params.require(:avatar).permit(:nickname, :head_portrait , :user_id)
  end

end

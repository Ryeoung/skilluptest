class ReplyController < ApplicationController
  def create
    @reply=Reply.new
    @reply.content=params[:content]
    @reply.post_id=params[:id]
    @reply.user_id=current_user.id
    @reply.save
    
    redirect_to '/post/show/'+ params[:id]
  end

  def destroy
        @reply=Reply.find(params[:id])
        @reply.destroy
        
        redirect_to '/post/show/' + @reply.post_id.to_s
  end
end

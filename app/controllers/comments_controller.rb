class CommentsController < ApplicationController
    def create
    
        @company = Company.find(params[:company_id])
        @comment = @company.comments.create(comment_params)
        @comment.username = current_user.username
        
        respond_to do |format|
            if @comment.save
              format.html { redirect_to @company, notice: 'Comment was successfully created.' }
              format.json { render :show, status: :created, location: @company }
            else
              format.html { render :new }
              format.json { render json: @company.errors, status: :unprocessable_entity }
            end
          end
      end
      


    private def comment_params
        params.require(:comment).permit(:username, :body)
    end

end

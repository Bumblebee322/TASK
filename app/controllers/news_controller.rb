class NewsController < ApplicationController

    def create
    
        @company = Company.find(params[:company_id])
        @comment = @company.news.new(comment_params)
        
        respond_to do |format|
        
            if @comment.save
              format.html { redirect_to @company, notice: 'Post was successfully created.' }
              format.json { render :show, status: :created, location: @company }
            else
              format.html { render :new }
              format.json { render json: @company.errors, status: :unprocessable_entity }
            end
          end
    end


    private def comment_params
        params.require(:news).permit(:body, :title, :image)
    end

end

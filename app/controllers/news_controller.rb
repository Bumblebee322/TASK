class NewsController < ApplicationController

    def create
    
      @company = Company.find(params[:company_id])
      @news = @company.news.create(news_params)
      
      puts(@news.image,'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
      

      







      respond_to do |format|
        if @news.save
          format.html { redirect_to @company, notice: 'Post was successfully created.' }
          format.json { render :show, status: :created, location: @company }
        else
          format.html { render :new }
          format.json { render json: @company.errors, status: :unprocessable_entity }
        end
      end
    
  
       
    end

    def show
    end

    private def news_params
        params.require(:news).permit(:title, :body, :image)
    end

end

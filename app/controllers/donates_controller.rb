class DonatesController < ApplicationController
    def create
    
        @company = Company.find(params[:company_id])
        @donate = @company.donates.create(donate_params)
        
        
        respond_to do |format|
            if @donate.save
              format.html { redirect_to @company, notice: 'Comment was successfully created.' }
              format.json { render :show, status: :created, location: @company }
            else
              format.html { render :new }
              format.json { render json: @company.errors, status: :unprocessable_entity }
            end
          end
      end
    def show
      @company = Company.find(params[:company_id])
      @donate = Donate.find(params[:id])
      puts(@company.current_sum,'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
      @company.current_sum += @donate.cost
      puts(@company.current_sum,'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
    end
    
    
    def update

    end
      
    private
    def donate_params
        params.require(:donate).permit(:title, :body, :cost)
    end
    
    
   
end

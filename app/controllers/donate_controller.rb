class DonateController < CompaniesController
    def index
        id = request.url
        id = id[40..-1]
         
        puts('!!!!!!!!!!')
        puts(id,'!!!!!!!!!!!!!!!!!!')
        @companies = Company.all
        @company = Company.find(params[id: id])
    end
end

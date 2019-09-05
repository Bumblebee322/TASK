class PersonsController < ApplicationController
  def profile
    @companies = Company.all
  end
end

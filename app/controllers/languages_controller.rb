class LanguagesController < ApplicationController
  def create
    binding.pry
    redirect_to demonstrations_path, notice: 'hoge'
  end
end

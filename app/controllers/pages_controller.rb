class PagesController < ApplicationController
  def home
    @beatles = ['john', 'paul', 'george', 'ringo']
  end
end

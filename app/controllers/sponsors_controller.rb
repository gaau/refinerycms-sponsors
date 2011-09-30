class SponsorsController < ApplicationController

  before_filter :find_all_sponsors
  before_filter :find_page
  before_filter :find_random

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @sponsor in the line below:
    present(@page)
  end

  def show
    @sponsor = Sponsor.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @sponsor in the line below:
    present(@page)
  end

protected

  def find_all_sponsors
#    @sponsors = Sponsor.order('position ASC')
    @sponsors = Sponsor.order('position ASC')
  end

  def find_page
    @page = Page.where(:link_url => "/sponsors").first
  end

  def find_random
    @rand_sponsor = Sponsor.random
  end

end

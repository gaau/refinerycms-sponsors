module Admin
  class SponsorsController < Admin::BaseController

    crudify :sponsor, :xhr_paging => true

  end
end

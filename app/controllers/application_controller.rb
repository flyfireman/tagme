# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
def pages_for(result,options = {})
  page, per_page, total = (options[:page] || 1),(options[:per_page] || 30),(result.total_hits || 0)
  page_total = page * per_page
  index = (page.to_i - 1) * per_page
   returning WillPaginate::Collection.new(page, per_page, total) do |pager|
    pager.replace result[index,per_page]
   end
 end
end

class ApplicationController < ActionController::Base
	include ApplicationHelper
	around_action :catch_not_found
end

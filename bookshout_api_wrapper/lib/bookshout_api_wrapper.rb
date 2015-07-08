require "bookshout_api_wrapper/version"
require 'rest-client'

module BookshoutApiWrapper
  def self.get_info(user_id)
	response = RestClient.get "www.bookshout.com/api/users/#{user_id}.json"
	JSON.parse response
  end
end

require "bookshout_api_wrapper/version"
require 'rest-client'

module BookshoutApiWrapper
  def self.get_user_info(user_id)
	response = RestClient.get "www.bookshout.com/api/users/#{user_id}.json"
	JSON.parse response
  end
  
  def self.get_search_results(search_term)
	results = RestClient.get "www.bookshout.com/api/books/search.json", :params => {:query => search_term}
	JSON.parse results
	
  end
end

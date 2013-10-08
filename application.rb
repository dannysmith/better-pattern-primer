require 'sinatra'
require 'rack-livereload'

use Rack::LiveReload

set :public_folder, File.dirname(__FILE__) + '/public'

get '/' do
 erb :pattern_index, :layout => :pattern_layout
end

get '/:pattern' do
	@pattern = params[:pattern]
	erb :show_pattern, :layout => :pattern_layout
end
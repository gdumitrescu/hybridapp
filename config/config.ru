$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

use Rack::Static, :urls => ["/app"]

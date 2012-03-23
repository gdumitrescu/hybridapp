# More info at 
# https://github.com/guard/guard#readme
# https://github.com/guard/guard/wiki/Guardfile-examples

# Install Gems with Bundler with bundle install
# Define your guards in Guardfile
# Start Guard with bundle exec guard
# Open your browser with open http://localhost:3000

# Launch Guard like this: [bundle exec] guard -g app

group :app do

  guard :bundler, 
    :hide_success => true do
    watch('Gemfile')
  end
  
  guard 'coffeescript', 
    :output => 'assets/www/javascripts/', 
    :bare => %w{ a.coffee }, 
    :hide_success => true do
    watch('src/coffee/(.*)\.coffee')
  end
  
  guard 'coffeescript', 
    :output => 'spec/javascripts/',
    :hide_success => true do
    watch('spec/coffeescripts/(.*)\.coffee')
  end
 
  guard 'compass',
    :output => 'assets/www/stylesheets',
    :workdir => 'src/sass',
    :configuration_file => 'config/compass.rb',
    :hide_success => true do
    watch('src/sass/(.*)\.sass')
  end

  guard 'haml',
    :input => 'src/haml',
    :output => 'assets/www',
    :hide_success => true do
    watch('src/haml(.*)\.haml')
  end

  guard 'webrick', 
    :host => '127.0.0.1', 
    :port => '3000', 
    :docroot => 'assets/www' do
  end

  guard 'livereload',
    :apply_js_live => true, 
    :apply_css_live => true,
    :apply_htm_live => true do
    watch('assets/www/javascripts/.+\.js$')
    watch('assets/www/stylesheets/.+\.css$')
    watch('assets/www/.+\.htm$')
  end

end

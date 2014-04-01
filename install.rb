# Only executed when installed as plugin.
# When installed as a gem must use the generator, unless using Rails >= 3.1 and asset pipeline,
#   in which case the asset pipeline takes care of everything
require 'fileutils'
include FileUtils

dir = "#{File.dirname(__FILE__)}/vendor/assets/javascripts"
rails_javascripts_dir = "#{Rails.root}/public/javascripts"

puts "copying flash.js to #{rails_javascripts_dir}"
cp "#{dir}/flash.js", rails_javascripts_dir
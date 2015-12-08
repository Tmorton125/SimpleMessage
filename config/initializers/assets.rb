# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )

# Next Need to preload the assests into the application for each engine
$engine_manifests.each do |e|
	Rails.application.config.assets.precompile += [ "#{e[:asset_folder]}.css" ]
	Rails.application.config.assets.precompile += [ "#{e[:asset_folder]}.js" ]
end

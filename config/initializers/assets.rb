# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( dash/partials/landlord_workorder.css )
Rails.application.config.assets.precompile += %w( dash/landlord_workorder.js )
Rails.application.config.assets.precompile += %w( dash/landlord_workorder_data.js )
Rails.application.config.assets.precompile += %w( dash/jquery.geocomplete.min.js )
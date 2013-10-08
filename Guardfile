# # Guardfile

# Reload the app (but not the browser) on changes to ruby files
guard :shotgun, server: 'thin', port: 3000 do
  watch 'application.rb'
end

# Restart the bundles if I change the Gemfile
guard :bundler do
  watch('Gemfile')
end

# Rebuild the css when any SASS files are changed.
guard :sass, input: 'scss', output: 'public/css', style: 'expanded', all_on_start: true do
  watch %r{sass/.+\.(sass|scss|css)$}
  watch %r{patterns-scss/.+\.(sass|scss|css)$}
end

# Reload the browser on changes to CSS, ERB or HTML.
guard :livereload do
  watch %r{views/.+\.(erb|haml)$}
  watch %r{patterns/.+\.(erb|html)$}
  watch %r{public/.+\.(css|js|html)}
end


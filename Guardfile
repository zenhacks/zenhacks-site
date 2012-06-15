# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'livereload' do
  # all the template files in source, source/layout, source/partials
  watch(%r{source/.+\.(erb|haml|slim)})
  # stylesheets
  watch(%r{source/stylesheets/.+\.(css|less|scss|sass)})
  # javascript
  watch(%r{source/javascripts/.+\.(js|coffee)})
  # data
  watch(%r{data/.+\.yml})
  # images
  watch(%r{source/images/.+\.(jpg|png|gif)})
end

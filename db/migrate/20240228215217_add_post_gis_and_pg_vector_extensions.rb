class AddPostGisAndPgVectorExtensions < ActiveRecord::Migration[7.1]
  def change
    enable_extension("vector")
    enable_extension("postgis")
  end
end

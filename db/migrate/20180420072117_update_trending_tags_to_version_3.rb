class UpdateTrendingTagsToVersion3 < ActiveRecord::Migration[5.2]
  def change
    update_view :trending_tags,
      version: 3,
      revert_to_version: 2,
      materialized: true
  end
end

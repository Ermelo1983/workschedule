collection Location.all
attribute id: :id
attributes :name, :city, :updated_at
node(:url) { |obj| api_v1_location_url(obj) }

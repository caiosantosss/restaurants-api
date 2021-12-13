json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
  json.extract! restaurant.user, :email
  json.comments restaurant.comments do |comment|
    json.extract! comment, :id, :content
    json.extract! comment.user, :email
  end
end

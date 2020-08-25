# Set current_user
current_user = User.first

# Set another user
an_user = User.where(id:2)

#################### FEEDS #####################
# Get user name
current_user.lastname + " " + current_user.firstname

# Get user email
current_user.email

# Get photo's title
Photo.first.title

# Get photo's description
Photo.first.description

# Get photo's publication day
Photo.first.created_at

# Get album's title
Album.first.title

# Get album's description
Album.first.description

# Get album's publication day
Album.first.created_at

# Get public photos in reverse chronological order
Photo.where(shared:true).order(created_at: :desc)

# Get public albums in reverse chronological order
Album.where(shared:true).order(created_at: :desc)

# Get users who you are following
current_user.followees

# Get public photos post by users who you are following
Photo.where(user_id:current_user.followees, shared:true)

# Get public albums post by users who you are following
Album.where(user_id:current_user.followees, shared:true)

# Get all photos liked by current user
Like.where(user_id:current_user, likeable_type:Photo)

# Get all albums liked by current user
Like.where(user_id:current_user, likeable_type:Album)

# Get number of likes for photo
Like.where(likeable_type:Photo, likeable_id:1).size
# or
Photo.find_by(id:1).likes.size

# Get number of likes for album
Like.where(likeable_type:Album, likeable_id:1).size
# or
Album.find_by(id:1).likes.size

# Get users who have like the photo
Photo.first.likes.pluck(:id)
# or
Photo.first.likes.each do |t|
  puts t.user.inspect
end

# Get users who have like the album
Album.first.likes.pluck(:id)
# or
Photo.first.likes.each do |t|
  puts t.user.inspect
end

#################### DISCOVERY #####################

# Get public photo posts from all users
Photo.where(shared:true)

# Get public album posts from all users
Album.where(shared:true)

#################### PUBLIC PROFILE #####################

# Get number of public photos
Photo.where(user_id:an_user, shared:true).size

# Get number of public albums
Album.where(user_id:an_user, shared:true).size

# Get the number of followings
an_user.followees.size

# Get the number of follwers
an_user.followers.size

# Check if current user has followed an user
Follow.where(follower_id:current_user, followee_id:an_user).exists?

# Get the number of public photos in an album
Album.first.photos.where(shared:true).size

# Get users who are followed by an user
an_user.followees

# Get users who follow an user
an_user.followers

#################### ADMIN MANAGEMENT #####################

# Get all photos
Photo.all.order(created_at: :desc)

# Get all albums
Album.all.order(created_at: :desc)

# Get all users
User.all

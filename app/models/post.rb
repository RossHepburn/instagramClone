class Post < ActiveRecord::Base
	validates :description, presence: true
 
	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>"}, 
		storage: :s3,
    bucket: 'instagramClone',
    s3_credentials: {
      access_key_id: Rails.application.secrets.s3_access_key,
      secret_access_key: Rails.application.secrets.s3_secret_key
    }
end
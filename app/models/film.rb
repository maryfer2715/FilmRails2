class Film < ActiveRecord::Base
	mount_uploader :cover, CoverUploader
end

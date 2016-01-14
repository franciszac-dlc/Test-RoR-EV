class Event < ActiveRecord::Base
	validates :title, presence: true
	has_attached_file :pubmat, styles: { thumb: "100x100>" , medium: "595x842>"}
	validates_attachment_content_type :pubmat, :content_type => /\Aimage\/.*\Z/
end
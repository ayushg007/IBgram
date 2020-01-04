class Post < ApplicationRecord
    validates :image, presence: true

    has_attached_file :image, styles: { :medium => "640x" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    def self.search(page)
        paginate :per_page => 2,:page => page
    end
end

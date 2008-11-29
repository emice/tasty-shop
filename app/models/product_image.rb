class ProductImage < ActiveRecord::Base
  belongs_to :product_design

  has_attachment :content_type => :image, 
    :storage => :s3, 
    :max_size => 500.kilobytes,
    :resize_to => '320x200>',
    :thumbnails => { :small => '20x20>', :thumb => '100x100>' }

end

class Image < ApplicationRecord
  belongs_to :place, optional: true
end

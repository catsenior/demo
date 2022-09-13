class Attendee < ApplicationRecord
  #有Foreign Key的Model，就是設定belongs_to的Model。
  belongs_to :event
end

class Url < ActiveRecord::Base
  def to_param
    self.short_url
  end
end

class Authentication < ActiveRecord::Base

  belongs_to :user

  def self.new_from_omniauth(auth_hash)
    new do |auth|
      auth.provider = auth_hash["provider"]
      auth.uid = auth_hash["uid"]
      auth.token = auth_hash["credentials"]["token"]
    end
  end

  def update_token(auth_hash)
    self.token = auth_hash["credentials"]["token"]
    self.save
  end

end
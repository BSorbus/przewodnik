class User < ApplicationRecord
  devise :saml_authenticatable, :trackable

  # def self.load_saml_data attributes
  #   user = where(email: attributes['email']).first_or_create do |u|
  #     u.email = attributes['email']
  #     u.first_name = attributes['first_name']
  #     u.last_name = attributes['last_name']
  #     u.username = attributes['username']
  #   end
  #   user.save!
  #   user
  # end


  # def set_user_saml_attributes(user,attributes)
  #   attribute_map.each do |k,v|
  #     Rails.logger.info "Setting: #{v}, #{attributes[k]}"
  #     user.send "#{v}=", attributes[k]
  #   end
  # end


end

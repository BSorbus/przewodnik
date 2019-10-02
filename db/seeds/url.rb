puts '------------------------------------------------------------------------'
puts 'test.rb - START...'
puts '------------------------------------------------------------------------'


require 'yaml'

# pet_array = YAML.load(File.read("pets.yml"))
# p pet_array       
# #=> ["dog", "cat", "hamster"]

#CONFIG = YAML.load_file("#{Rails.root.to_s}/config/app_url.yml")[Rails.env]

#url_list = YAML.load_file("#{Rails.root.to_s}/config/app_url.yml")[Rails.env]
url_list = YAML.load_file("#{Rails.root.to_s}/config/app_url.yml")

puts url_list['admin_name']
puts url_list

puts '------------------------------------------------------------------------'
puts '...test.rb - END'
puts '------------------------------------------------------------------------'

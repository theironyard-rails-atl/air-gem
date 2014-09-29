%w( api topic version ).each do |mod|
  require_relative "./air/#{mod}"
end
#require_relative "./air/api"
#require_relative "./air/topic"
#require_relative "./air/version"

module Air
  # Your code goes here...
end

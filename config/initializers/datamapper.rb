Rails::DataMapper.configuration.resource_naming_convention[:default] = lambda do |name|
  name.downcase.singularize
end

Rails::DataMapper.configuration.field_naming_convention[:default] = lambda do |property|
  "#{property.model.name.downcase}#{property.name.to_s.camelize}"
end

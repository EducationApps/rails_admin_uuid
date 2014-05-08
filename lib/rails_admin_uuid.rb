require "rails_admin_uuid/engine"

module RailsAdminUuid
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/base'

module RailsAdmin
  module Config
    module Fields
      module Types
        class Uuid < RailsAdmin::Config::Fields::Base
          RailsAdmin::Config::Fields::Types::register(self)

          register_instance_option :formatted_value do
            value.to_s unless value.nil?
          end

          def parse_input(params)
            if params[name].is_a?(::String)
              params[name] = (params[name].blank? ? nil : (params[name] || nil))
            end
          end
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties[:name] == :uuid
    fields << RailsAdmin::Config::Fields::Types::Uuid.new(parent, properties[:name], properties)
    true
  else
    false
  end
end



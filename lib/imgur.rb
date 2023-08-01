# frozen_string_literal: true

require_relative "imgur/version"

module Imgur
  autoload :Client, "imgur/client"
  autoload :Error, "imgur/error"
  autoload :Resource, "imgur/resource"
  autoload :Object, "imgur/object"

  # High-level categories of Imgur API calls
  autoload :AccountResource, "imgur/resources/account"

  # Classes used to return OpenStruct wrapping for the response data
  autoload :Account, "imgur/objects/account"
end

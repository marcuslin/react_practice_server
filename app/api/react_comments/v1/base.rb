module ReactComments
  module V1
    class Base < Grape::API
      prefix 'api'
      format :json
      version 'v1', using: :path

      rescue_from :all, backtrace: true

      mount ReactComments::V1::Comments::Base
      # add_swagger_documentation(mount_path: "/api_docs", hide_documentation_path: false, api_version: 'v1')
    end
  end
end

module ReactComments
  class Base < Grape::API
    prefix 'api'
    format :json
    version 'v1', using: :path

    rescue_from :all, backtrace: true

    # rescue_from Grape::Exceptions::ValidationErrors do |error|
    #   rack_response({
    #     status_code: 400,
    #     error_msg: error.message,
    #   }.to_json, 400)
    # end
    helpers ReactComments::Helpers::CrossHelper

    before do
      allow_cross_origin_requests
    end

    mount V1::Base
    # add_swagger_documentation(mount_path: "/api_docs", hide_documentation_path: false, api_version: 'v1')
  end
end

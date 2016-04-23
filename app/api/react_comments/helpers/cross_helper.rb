module ReactComments::Helpers::CrossHelper
  def allow_cross_origin_requests
    header 'Access-Control-Allow-Origin', '*'
    # header 'Access-Control-Request-Method', '*'
    # header 'Access-Control-Allow-Headers', '*'
    # header 'Access-Control-Allow-Methods', 'GET, POST, PATCH, PUT, DELETE, OPTIONS, HEAD'
  end
end

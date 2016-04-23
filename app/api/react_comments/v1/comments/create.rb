class ReactComments::V1::Comments::Create < Grape::API
  post do
    comment = Comment.new(params[:comment])

    if comment.save
      status :ok
      {comments: Comment.all}
    else
      status :bad_request
    end
  end
end

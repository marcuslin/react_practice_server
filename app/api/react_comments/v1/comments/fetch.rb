class ReactComments::V1::Comments::Fetch < Grape::API
  get do
    comments = Comment.all

    status :ok
    { comments: comments }
  end
end

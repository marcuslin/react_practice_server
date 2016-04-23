module ReactComments
  module V1
    module Comments
      class Base < Grape::API
        resources :comments do
          mount Fetch
          mount Create
        end
      end
    end
  end
end

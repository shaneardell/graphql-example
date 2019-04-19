class Mutations::CreatePost < GraphQL::Schema::Mutation
  argument :user_id,   Int,     required: true,  description: 'The id of the user the post belongs to'
  argument :title,     String,  required: true,  description: 'The title of the post'
  argument :body,      String,  required: false, description: 'The body of the post'
  argument :published, Boolean, required: false, description: 'Whether or not the post is published. Default: false.'

  field :post,   Types::PostType, null: true
  field :errors, [String],        null: false

  def resolve(user_id:, title:, body: nil, published: false)
    user = User.find(user_id)
    post = user.posts.build(title: title, body: body, published: published)

    if post.save
      {
        post:   post,
        errors: [],
      }
    else
      {
        post: nil,
        erorrs: post.errors.full_messages,
      }
    end
  end
end


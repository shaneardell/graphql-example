class Types::PostType < Types::BaseObject
  field :id,         Int,                             description: 'The id of the post',                 null: false
  field :title,      String,                          description: 'The title of the post',              null: false
  field :body,       String,                          description: 'The body of the post',               null: true
  field :published,  Boolean,                         description: 'Published if true, Draft if false',  null: false
  field :created_at, GraphQL::Types::ISO8601DateTime, description: 'The creation timestamp of the post', null: false
end


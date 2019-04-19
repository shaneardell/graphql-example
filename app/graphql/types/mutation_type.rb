module Types
  class MutationType < Types::BaseObject
    graphql_name 'Mutation'
    description 'The mutation root of this schema'

    field :createPost, mutation: Mutations::CreatePost, null: true
  end
end

module Types
  class QueryType < Types::BaseObject
    graphql_name 'Query'
    description 'The query root of this schema'

    field :users, resolver: Resolvers::Users, null: false, description: 'Fetch a list of users'
    field :user,  resolver: Resolvers::User,  null: true,  description: 'Fetch a single user by id'
  end
end

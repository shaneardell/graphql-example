module Types
  class QueryType < Types::BaseObject
    graphql_name 'Query'
    description 'The query root of this schema'

    field :users, resolver: Resolvers::Users, null: false, description: 'A list of users'
  end
end

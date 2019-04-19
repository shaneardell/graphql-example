module Types
  class MutationType < Types::BaseObject
    graphql_name 'Mutation'
    description 'The mutation root of this schema'

    # field :mutation_name, mutation: Mutations::MutationName, null: true
  end
end

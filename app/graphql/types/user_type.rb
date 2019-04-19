class Types::UserType < Types::BaseObject
  field :id,         Int,               description: 'The id of the user',                    null: false
  field :first_name, String,            description: 'First Name of user',                    null: false
  field :last_name,  String,            description: 'Last Name of user',                     null: false
  field :posts,      [Types::PostType], description: 'A list of posts belonging to the user', null: false
end


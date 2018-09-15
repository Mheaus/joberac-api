# defines a new GraphQL type
Types::UserRoleType = GraphQL::ObjectType.define do
  # this type is named `UserRole`
  name 'UserRole'

  # it has the following fields
  field :id, !types.ID
  field :name, !types.String
end

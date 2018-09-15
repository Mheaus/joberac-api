# defines a new GraphQL type
Types::TagType = GraphQL::ObjectType.define do
  # this type is named `Tag`
  name 'Tag'

  # it has the following fields
  field :id, !types.ID
  field :name, !types.String
end

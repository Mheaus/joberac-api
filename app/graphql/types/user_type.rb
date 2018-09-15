# defines a new GraphQL type
Types::UserType = GraphQL::ObjectType.define do
  # this type is named `User`
  name 'User'

  # it has the following fields
  field :id, !types.ID
  field :email, !types.String
  field :description, !types.String
  field :phone, !types.String
  field :position, !types.String
  field :headline, !types.String
  field :name, !types.String
  field :firstname, !types.String
  field :lastname, !types.String
  field :company_name, !types.String
  field :banner_url, !types.String
  field :photo_url, !types.String
  field :user_role_id, !types.String
end

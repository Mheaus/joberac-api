Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # queries are just represented as fields
  field :announces, !types[Types::AnnounceType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Announce.all }
  end

  field :announce, Types::AnnounceType do
    argument :id, !types.ID
    resolve -> (obj, args, ctx) { Announce.find_by(id: args.id.to_i) }
  end

  field :tags, !types[Types::TagType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Tag.all }
  end

  field :tag, Types::TagType do
    argument :id, !types.ID
    resolve -> (obj, args, ctx) { Tag.find_by(id: args.id.to_i) }
  end

  field :users, !types[Types::UserType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { User.all }
  end

  field :user, Types::UserType do
    argument :id, !types.ID
    resolve -> (obj, args, ctx) { User.find_by(id: args.id.to_i) }
  end

  field :user_roles, !types[Types::UserRoleType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { UserRole.all }
  end

  field :user_role, Types::UserRoleType do
    argument :id, !types.ID
    resolve -> (obj, args, ctx) { UserRole.find_by(id: args.id.to_i) }
  end
end

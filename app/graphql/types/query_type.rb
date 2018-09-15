Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  # queries are just represented as fields
  field :announces, !types[Types::AnnounceType] do
    # resolve would be called in order to fetch data for that field
    resolve -> (obj, args, ctx) { Announce.all }
  end

  field :announce, !types[Types::AnnounceType] do
    resolve -> (obj, args, ctx) { Announce.find(id: args.id) }
  end
end
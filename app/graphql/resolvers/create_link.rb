class Resolvers::CreateLink < GraphQL::Function
    argument :description, !types.String
    argument :url, !types.String

    # return typ
    type Types::LinkType

    # mutation method
    # _obj - parent object, which in this case is nil
    # args - arguments passed
    # _ctx - GraphQL context
    def call(_obj, args, _ctx)
        Link.create!(
            description: args[:description],
            url: args[:url]
        )
    end
end
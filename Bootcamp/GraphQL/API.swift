//  This file was automatically generated and should not be edited.

import Apollo

public final class FeedQuery: GraphQLQuery {
  public let operationDefinition =
    "query Feed($first: Int) {\n  feeds(first: $first) {\n    __typename\n    edges {\n      __typename\n      node {\n        __typename\n        ...Feed\n      }\n    }\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(Feed.fragmentDefinition) }

  public var first: Int?

  public init(first: Int? = nil) {
    self.first = first
  }

  public var variables: GraphQLMap? {
    return ["first": first]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("feeds", arguments: ["first": GraphQLVariable("first")], type: .object(Feed.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(feeds: Feed? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "feeds": feeds.flatMap { (value: Feed) -> ResultMap in value.resultMap }])
    }

    public var feeds: Feed? {
      get {
        return (resultMap["feeds"] as? ResultMap).flatMap { Feed(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "feeds")
      }
    }

    public struct Feed: GraphQLSelectionSet {
      public static let possibleTypes = ["FeedObjectConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("edges", type: .nonNull(.list(.object(Edge.selections)))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(edges: [Edge?]) {
        self.init(unsafeResultMap: ["__typename": "FeedObjectConnection", "edges": edges.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var edges: [Edge?] {
        get {
          return (resultMap["edges"] as! [ResultMap?]).map { (value: ResultMap?) -> Edge? in value.flatMap { (value: ResultMap) -> Edge in Edge(unsafeResultMap: value) } }
        }
        set {
          resultMap.updateValue(newValue.map { (value: Edge?) -> ResultMap? in value.flatMap { (value: Edge) -> ResultMap in value.resultMap } }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes = ["FeedObjectEdge"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .object(Node.selections)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(node: Node? = nil) {
          self.init(unsafeResultMap: ["__typename": "FeedObjectEdge", "node": node.flatMap { (value: Node) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of the edge
        public var node: Node? {
          get {
            return (resultMap["node"] as? ResultMap).flatMap { Node(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "node")
          }
        }

        public struct Node: GraphQLSelectionSet {
          public static let possibleTypes = ["FeedObject"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
            GraphQLField("date", type: .nonNull(.scalar(String.self))),
            GraphQLField("post", type: .nonNull(.scalar(String.self))),
            GraphQLField("user", type: .nonNull(.object(User.selections))),
            GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
            GraphQLField("comments", type: .nonNull(.scalar(Int.self))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(id: GraphQLID, date: String, post: String, user: User, likes: Int, comments: Int) {
            self.init(unsafeResultMap: ["__typename": "FeedObject", "id": id, "date": date, "post": post, "user": user.resultMap, "likes": likes, "comments": comments])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The ID of the object.
          public var id: GraphQLID {
            get {
              return resultMap["id"]! as! GraphQLID
            }
            set {
              resultMap.updateValue(newValue, forKey: "id")
            }
          }

          public var date: String {
            get {
              return resultMap["date"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "date")
            }
          }

          public var post: String {
            get {
              return resultMap["post"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "post")
            }
          }

          public var user: User {
            get {
              return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
            }
            set {
              resultMap.updateValue(newValue.resultMap, forKey: "user")
            }
          }

          public var likes: Int {
            get {
              return resultMap["likes"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "likes")
            }
          }

          public var comments: Int {
            get {
              return resultMap["comments"]! as! Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "comments")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }

          public struct Fragments {
            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public var feed: Feed {
              get {
                return Feed(unsafeResultMap: resultMap)
              }
              set {
                resultMap += newValue.resultMap
              }
            }
          }

          public struct User: GraphQLSelectionSet {
            public static let possibleTypes = ["UserObject"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("username", type: .nonNull(.scalar(String.self))),
              GraphQLField("profile", type: .object(Profile.selections)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(username: String, profile: Profile? = nil) {
              self.init(unsafeResultMap: ["__typename": "UserObject", "username": username, "profile": profile.flatMap { (value: Profile) -> ResultMap in value.resultMap }])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
            public var username: String {
              get {
                return resultMap["username"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "username")
              }
            }

            public var profile: Profile? {
              get {
                return (resultMap["profile"] as? ResultMap).flatMap { Profile(unsafeResultMap: $0) }
              }
              set {
                resultMap.updateValue(newValue?.resultMap, forKey: "profile")
              }
            }

            public struct Profile: GraphQLSelectionSet {
              public static let possibleTypes = ["ProfileObject"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("pictureUrl", type: .scalar(String.self)),
              ]

              public private(set) var resultMap: ResultMap

              public init(unsafeResultMap: ResultMap) {
                self.resultMap = unsafeResultMap
              }

              public init(pictureUrl: String? = nil) {
                self.init(unsafeResultMap: ["__typename": "ProfileObject", "pictureUrl": pictureUrl])
              }

              public var __typename: String {
                get {
                  return resultMap["__typename"]! as! String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "__typename")
                }
              }

              public var pictureUrl: String? {
                get {
                  return resultMap["pictureUrl"] as? String
                }
                set {
                  resultMap.updateValue(newValue, forKey: "pictureUrl")
                }
              }
            }
          }
        }
      }
    }
  }
}

public final class PostMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation Post($post: String!) {\n  createFeed(feed: {post: $post}) {\n    __typename\n    feed {\n      __typename\n      ...Feed\n    }\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(Feed.fragmentDefinition) }

  public var post: String

  public init(post: String) {
    self.post = post
  }

  public var variables: GraphQLMap? {
    return ["post": post]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutations"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createFeed", arguments: ["feed": ["post": GraphQLVariable("post")]], type: .object(CreateFeed.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(createFeed: CreateFeed? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutations", "createFeed": createFeed.flatMap { (value: CreateFeed) -> ResultMap in value.resultMap }])
    }

    public var createFeed: CreateFeed? {
      get {
        return (resultMap["createFeed"] as? ResultMap).flatMap { CreateFeed(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "createFeed")
      }
    }

    public struct CreateFeed: GraphQLSelectionSet {
      public static let possibleTypes = ["CreateFeed"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("feed", type: .object(Feed.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(feed: Feed? = nil) {
        self.init(unsafeResultMap: ["__typename": "CreateFeed", "feed": feed.flatMap { (value: Feed) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var feed: Feed? {
        get {
          return (resultMap["feed"] as? ResultMap).flatMap { Feed(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "feed")
        }
      }

      public struct Feed: GraphQLSelectionSet {
        public static let possibleTypes = ["FeedObject"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("date", type: .nonNull(.scalar(String.self))),
          GraphQLField("post", type: .nonNull(.scalar(String.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
          GraphQLField("comments", type: .nonNull(.scalar(Int.self))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, date: String, post: String, user: User, likes: Int, comments: Int) {
          self.init(unsafeResultMap: ["__typename": "FeedObject", "id": id, "date": date, "post": post, "user": user.resultMap, "likes": likes, "comments": comments])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID of the object.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var date: String {
          get {
            return resultMap["date"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "date")
          }
        }

        public var post: String {
          get {
            return resultMap["post"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "post")
          }
        }

        public var user: User {
          get {
            return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "user")
          }
        }

        public var likes: Int {
          get {
            return resultMap["likes"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var comments: Int {
          get {
            return resultMap["comments"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "comments")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var feed: Feed {
            get {
              return Feed(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["UserObject"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("username", type: .nonNull(.scalar(String.self))),
            GraphQLField("profile", type: .object(Profile.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(username: String, profile: Profile? = nil) {
            self.init(unsafeResultMap: ["__typename": "UserObject", "username": username, "profile": profile.flatMap { (value: Profile) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
          public var username: String {
            get {
              return resultMap["username"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "username")
            }
          }

          public var profile: Profile? {
            get {
              return (resultMap["profile"] as? ResultMap).flatMap { Profile(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "profile")
            }
          }

          public struct Profile: GraphQLSelectionSet {
            public static let possibleTypes = ["ProfileObject"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("pictureUrl", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(pictureUrl: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ProfileObject", "pictureUrl": pictureUrl])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var pictureUrl: String? {
              get {
                return resultMap["pictureUrl"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "pictureUrl")
              }
            }
          }
        }
      }
    }
  }
}

public final class LikeMutation: GraphQLMutation {
  public let operationDefinition =
    "mutation Like($id: ID!) {\n  likeFeed(id: $id) {\n    __typename\n    feed {\n      __typename\n      ...Feed\n    }\n  }\n}"

  public var queryDocument: String { return operationDefinition.appending(Feed.fragmentDefinition) }

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutations"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("likeFeed", arguments: ["id": GraphQLVariable("id")], type: .object(LikeFeed.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(likeFeed: LikeFeed? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutations", "likeFeed": likeFeed.flatMap { (value: LikeFeed) -> ResultMap in value.resultMap }])
    }

    public var likeFeed: LikeFeed? {
      get {
        return (resultMap["likeFeed"] as? ResultMap).flatMap { LikeFeed(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "likeFeed")
      }
    }

    public struct LikeFeed: GraphQLSelectionSet {
      public static let possibleTypes = ["LikeFeed"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("feed", type: .object(Feed.selections)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(feed: Feed? = nil) {
        self.init(unsafeResultMap: ["__typename": "LikeFeed", "feed": feed.flatMap { (value: Feed) -> ResultMap in value.resultMap }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var feed: Feed? {
        get {
          return (resultMap["feed"] as? ResultMap).flatMap { Feed(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "feed")
        }
      }

      public struct Feed: GraphQLSelectionSet {
        public static let possibleTypes = ["FeedObject"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("date", type: .nonNull(.scalar(String.self))),
          GraphQLField("post", type: .nonNull(.scalar(String.self))),
          GraphQLField("user", type: .nonNull(.object(User.selections))),
          GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
          GraphQLField("comments", type: .nonNull(.scalar(Int.self))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, date: String, post: String, user: User, likes: Int, comments: Int) {
          self.init(unsafeResultMap: ["__typename": "FeedObject", "id": id, "date": date, "post": post, "user": user.resultMap, "likes": likes, "comments": comments])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID of the object.
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        public var date: String {
          get {
            return resultMap["date"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "date")
          }
        }

        public var post: String {
          get {
            return resultMap["post"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "post")
          }
        }

        public var user: User {
          get {
            return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
          }
          set {
            resultMap.updateValue(newValue.resultMap, forKey: "user")
          }
        }

        public var likes: Int {
          get {
            return resultMap["likes"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "likes")
          }
        }

        public var comments: Int {
          get {
            return resultMap["comments"]! as! Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "comments")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }

        public struct Fragments {
          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public var feed: Feed {
            get {
              return Feed(unsafeResultMap: resultMap)
            }
            set {
              resultMap += newValue.resultMap
            }
          }
        }

        public struct User: GraphQLSelectionSet {
          public static let possibleTypes = ["UserObject"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("username", type: .nonNull(.scalar(String.self))),
            GraphQLField("profile", type: .object(Profile.selections)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(username: String, profile: Profile? = nil) {
            self.init(unsafeResultMap: ["__typename": "UserObject", "username": username, "profile": profile.flatMap { (value: Profile) -> ResultMap in value.resultMap }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
          public var username: String {
            get {
              return resultMap["username"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "username")
            }
          }

          public var profile: Profile? {
            get {
              return (resultMap["profile"] as? ResultMap).flatMap { Profile(unsafeResultMap: $0) }
            }
            set {
              resultMap.updateValue(newValue?.resultMap, forKey: "profile")
            }
          }

          public struct Profile: GraphQLSelectionSet {
            public static let possibleTypes = ["ProfileObject"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("pictureUrl", type: .scalar(String.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(pictureUrl: String? = nil) {
              self.init(unsafeResultMap: ["__typename": "ProfileObject", "pictureUrl": pictureUrl])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            public var pictureUrl: String? {
              get {
                return resultMap["pictureUrl"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "pictureUrl")
              }
            }
          }
        }
      }
    }
  }
}

public struct Feed: GraphQLFragment {
  public static let fragmentDefinition =
    "fragment Feed on FeedObject {\n  __typename\n  id\n  date\n  post\n  user {\n    __typename\n    username\n    profile {\n      __typename\n      pictureUrl\n    }\n  }\n  likes\n  comments\n}"

  public static let possibleTypes = ["FeedObject"]

  public static let selections: [GraphQLSelection] = [
    GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
    GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
    GraphQLField("date", type: .nonNull(.scalar(String.self))),
    GraphQLField("post", type: .nonNull(.scalar(String.self))),
    GraphQLField("user", type: .nonNull(.object(User.selections))),
    GraphQLField("likes", type: .nonNull(.scalar(Int.self))),
    GraphQLField("comments", type: .nonNull(.scalar(Int.self))),
  ]

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, date: String, post: String, user: User, likes: Int, comments: Int) {
    self.init(unsafeResultMap: ["__typename": "FeedObject", "id": id, "date": date, "post": post, "user": user.resultMap, "likes": likes, "comments": comments])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The ID of the object.
  public var id: GraphQLID {
    get {
      return resultMap["id"]! as! GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var date: String {
    get {
      return resultMap["date"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "date")
    }
  }

  public var post: String {
    get {
      return resultMap["post"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "post")
    }
  }

  public var user: User {
    get {
      return User(unsafeResultMap: resultMap["user"]! as! ResultMap)
    }
    set {
      resultMap.updateValue(newValue.resultMap, forKey: "user")
    }
  }

  public var likes: Int {
    get {
      return resultMap["likes"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "likes")
    }
  }

  public var comments: Int {
    get {
      return resultMap["comments"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "comments")
    }
  }

  public struct User: GraphQLSelectionSet {
    public static let possibleTypes = ["UserObject"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("username", type: .nonNull(.scalar(String.self))),
      GraphQLField("profile", type: .object(Profile.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(username: String, profile: Profile? = nil) {
      self.init(unsafeResultMap: ["__typename": "UserObject", "username": username, "profile": profile.flatMap { (value: Profile) -> ResultMap in value.resultMap }])
    }

    public var __typename: String {
      get {
        return resultMap["__typename"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
    public var username: String {
      get {
        return resultMap["username"]! as! String
      }
      set {
        resultMap.updateValue(newValue, forKey: "username")
      }
    }

    public var profile: Profile? {
      get {
        return (resultMap["profile"] as? ResultMap).flatMap { Profile(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "profile")
      }
    }

    public struct Profile: GraphQLSelectionSet {
      public static let possibleTypes = ["ProfileObject"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureUrl", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(pictureUrl: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "ProfileObject", "pictureUrl": pictureUrl])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var pictureUrl: String? {
        get {
          return resultMap["pictureUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "pictureUrl")
        }
      }
    }
  }
}
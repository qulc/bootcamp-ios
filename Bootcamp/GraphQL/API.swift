//  This file was automatically generated and should not be edited.

import Apollo

public final class FeedQuery: GraphQLQuery {
  public static let operationString =
    "query Feed($first: Int) {\n  feeds(first: $first) {\n    __typename\n    edges {\n      __typename\n      node {\n        __typename\n        ...Feed\n      }\n    }\n  }\n}"

  public static var requestString: String { return operationString.appending(Feed.fragmentString) }

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

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(feeds: Feed? = nil) {
      self.init(snapshot: ["__typename": "Query", "feeds": feeds.flatMap { (value: Feed) -> Snapshot in value.snapshot }])
    }

    public var feeds: Feed? {
      get {
        return (snapshot["feeds"] as? Snapshot).flatMap { Feed(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "feeds")
      }
    }

    public struct Feed: GraphQLSelectionSet {
      public static let possibleTypes = ["FeedObjectConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("edges", type: .nonNull(.list(.object(Edge.selections)))),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(edges: [Edge?]) {
        self.init(snapshot: ["__typename": "FeedObjectConnection", "edges": edges.map { (value: Edge?) -> Snapshot? in value.flatMap { (value: Edge) -> Snapshot in value.snapshot } }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var edges: [Edge?] {
        get {
          return (snapshot["edges"] as! [Snapshot?]).map { (value: Snapshot?) -> Edge? in value.flatMap { (value: Snapshot) -> Edge in Edge(snapshot: value) } }
        }
        set {
          snapshot.updateValue(newValue.map { (value: Edge?) -> Snapshot? in value.flatMap { (value: Edge) -> Snapshot in value.snapshot } }, forKey: "edges")
        }
      }

      public struct Edge: GraphQLSelectionSet {
        public static let possibleTypes = ["FeedObjectEdge"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("node", type: .object(Node.selections)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(node: Node? = nil) {
          self.init(snapshot: ["__typename": "FeedObjectEdge", "node": node.flatMap { (value: Node) -> Snapshot in value.snapshot }])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The item at the end of the edge
        public var node: Node? {
          get {
            return (snapshot["node"] as? Snapshot).flatMap { Node(snapshot: $0) }
          }
          set {
            snapshot.updateValue(newValue?.snapshot, forKey: "node")
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

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(id: GraphQLID, date: String, post: String, user: User, likes: Int, comments: Int) {
            self.init(snapshot: ["__typename": "FeedObject", "id": id, "date": date, "post": post, "user": user.snapshot, "likes": likes, "comments": comments])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The ID of the object.
          public var id: GraphQLID {
            get {
              return snapshot["id"]! as! GraphQLID
            }
            set {
              snapshot.updateValue(newValue, forKey: "id")
            }
          }

          public var date: String {
            get {
              return snapshot["date"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "date")
            }
          }

          public var post: String {
            get {
              return snapshot["post"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "post")
            }
          }

          public var user: User {
            get {
              return User(snapshot: snapshot["user"]! as! Snapshot)
            }
            set {
              snapshot.updateValue(newValue.snapshot, forKey: "user")
            }
          }

          public var likes: Int {
            get {
              return snapshot["likes"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "likes")
            }
          }

          public var comments: Int {
            get {
              return snapshot["comments"]! as! Int
            }
            set {
              snapshot.updateValue(newValue, forKey: "comments")
            }
          }

          public var fragments: Fragments {
            get {
              return Fragments(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
            }
          }

          public struct Fragments {
            public var snapshot: Snapshot

            public var feed: Feed {
              get {
                return Feed(snapshot: snapshot)
              }
              set {
                snapshot += newValue.snapshot
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

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(username: String, profile: Profile? = nil) {
              self.init(snapshot: ["__typename": "UserObject", "username": username, "profile": profile.flatMap { (value: Profile) -> Snapshot in value.snapshot }])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
            public var username: String {
              get {
                return snapshot["username"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "username")
              }
            }

            public var profile: Profile? {
              get {
                return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
              }
              set {
                snapshot.updateValue(newValue?.snapshot, forKey: "profile")
              }
            }

            public struct Profile: GraphQLSelectionSet {
              public static let possibleTypes = ["ProfileObject"]

              public static let selections: [GraphQLSelection] = [
                GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
                GraphQLField("pictureUrl", type: .scalar(String.self)),
              ]

              public var snapshot: Snapshot

              public init(snapshot: Snapshot) {
                self.snapshot = snapshot
              }

              public init(pictureUrl: String? = nil) {
                self.init(snapshot: ["__typename": "ProfileObject", "pictureUrl": pictureUrl])
              }

              public var __typename: String {
                get {
                  return snapshot["__typename"]! as! String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "__typename")
                }
              }

              public var pictureUrl: String? {
                get {
                  return snapshot["pictureUrl"] as? String
                }
                set {
                  snapshot.updateValue(newValue, forKey: "pictureUrl")
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
  public static let operationString =
    "mutation Post($post: String!) {\n  createFeed(feed: {post: $post}) {\n    __typename\n    feed {\n      __typename\n      ...Feed\n    }\n  }\n}"

  public static var requestString: String { return operationString.appending(Feed.fragmentString) }

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

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createFeed: CreateFeed? = nil) {
      self.init(snapshot: ["__typename": "Mutations", "createFeed": createFeed.flatMap { (value: CreateFeed) -> Snapshot in value.snapshot }])
    }

    public var createFeed: CreateFeed? {
      get {
        return (snapshot["createFeed"] as? Snapshot).flatMap { CreateFeed(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createFeed")
      }
    }

    public struct CreateFeed: GraphQLSelectionSet {
      public static let possibleTypes = ["CreateFeed"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("feed", type: .object(Feed.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(feed: Feed? = nil) {
        self.init(snapshot: ["__typename": "CreateFeed", "feed": feed.flatMap { (value: Feed) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var feed: Feed? {
        get {
          return (snapshot["feed"] as? Snapshot).flatMap { Feed(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "feed")
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

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, date: String, post: String, user: User, likes: Int, comments: Int) {
          self.init(snapshot: ["__typename": "FeedObject", "id": id, "date": date, "post": post, "user": user.snapshot, "likes": likes, "comments": comments])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID of the object.
        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var date: String {
          get {
            return snapshot["date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var post: String {
          get {
            return snapshot["post"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "post")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var likes: Int {
          get {
            return snapshot["likes"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "likes")
          }
        }

        public var comments: Int {
          get {
            return snapshot["comments"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "comments")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var feed: Feed {
            get {
              return Feed(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
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

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(username: String, profile: Profile? = nil) {
            self.init(snapshot: ["__typename": "UserObject", "username": username, "profile": profile.flatMap { (value: Profile) -> Snapshot in value.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
          public var username: String {
            get {
              return snapshot["username"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "username")
            }
          }

          public var profile: Profile? {
            get {
              return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "profile")
            }
          }

          public struct Profile: GraphQLSelectionSet {
            public static let possibleTypes = ["ProfileObject"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("pictureUrl", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(pictureUrl: String? = nil) {
              self.init(snapshot: ["__typename": "ProfileObject", "pictureUrl": pictureUrl])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var pictureUrl: String? {
              get {
                return snapshot["pictureUrl"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "pictureUrl")
              }
            }
          }
        }
      }
    }
  }
}

public final class LikeMutation: GraphQLMutation {
  public static let operationString =
    "mutation Like($id: ID!) {\n  likeFeed(id: $id) {\n    __typename\n    feed {\n      __typename\n      ...Feed\n    }\n  }\n}"

  public static var requestString: String { return operationString.appending(Feed.fragmentString) }

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

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(likeFeed: LikeFeed? = nil) {
      self.init(snapshot: ["__typename": "Mutations", "likeFeed": likeFeed.flatMap { (value: LikeFeed) -> Snapshot in value.snapshot }])
    }

    public var likeFeed: LikeFeed? {
      get {
        return (snapshot["likeFeed"] as? Snapshot).flatMap { LikeFeed(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "likeFeed")
      }
    }

    public struct LikeFeed: GraphQLSelectionSet {
      public static let possibleTypes = ["LikeFeed"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("feed", type: .object(Feed.selections)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(feed: Feed? = nil) {
        self.init(snapshot: ["__typename": "LikeFeed", "feed": feed.flatMap { (value: Feed) -> Snapshot in value.snapshot }])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var feed: Feed? {
        get {
          return (snapshot["feed"] as? Snapshot).flatMap { Feed(snapshot: $0) }
        }
        set {
          snapshot.updateValue(newValue?.snapshot, forKey: "feed")
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

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, date: String, post: String, user: User, likes: Int, comments: Int) {
          self.init(snapshot: ["__typename": "FeedObject", "id": id, "date": date, "post": post, "user": user.snapshot, "likes": likes, "comments": comments])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID of the object.
        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var date: String {
          get {
            return snapshot["date"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "date")
          }
        }

        public var post: String {
          get {
            return snapshot["post"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "post")
          }
        }

        public var user: User {
          get {
            return User(snapshot: snapshot["user"]! as! Snapshot)
          }
          set {
            snapshot.updateValue(newValue.snapshot, forKey: "user")
          }
        }

        public var likes: Int {
          get {
            return snapshot["likes"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "likes")
          }
        }

        public var comments: Int {
          get {
            return snapshot["comments"]! as! Int
          }
          set {
            snapshot.updateValue(newValue, forKey: "comments")
          }
        }

        public var fragments: Fragments {
          get {
            return Fragments(snapshot: snapshot)
          }
          set {
            snapshot += newValue.snapshot
          }
        }

        public struct Fragments {
          public var snapshot: Snapshot

          public var feed: Feed {
            get {
              return Feed(snapshot: snapshot)
            }
            set {
              snapshot += newValue.snapshot
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

          public var snapshot: Snapshot

          public init(snapshot: Snapshot) {
            self.snapshot = snapshot
          }

          public init(username: String, profile: Profile? = nil) {
            self.init(snapshot: ["__typename": "UserObject", "username": username, "profile": profile.flatMap { (value: Profile) -> Snapshot in value.snapshot }])
          }

          public var __typename: String {
            get {
              return snapshot["__typename"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "__typename")
            }
          }

          /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
          public var username: String {
            get {
              return snapshot["username"]! as! String
            }
            set {
              snapshot.updateValue(newValue, forKey: "username")
            }
          }

          public var profile: Profile? {
            get {
              return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
            }
            set {
              snapshot.updateValue(newValue?.snapshot, forKey: "profile")
            }
          }

          public struct Profile: GraphQLSelectionSet {
            public static let possibleTypes = ["ProfileObject"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("pictureUrl", type: .scalar(String.self)),
            ]

            public var snapshot: Snapshot

            public init(snapshot: Snapshot) {
              self.snapshot = snapshot
            }

            public init(pictureUrl: String? = nil) {
              self.init(snapshot: ["__typename": "ProfileObject", "pictureUrl": pictureUrl])
            }

            public var __typename: String {
              get {
                return snapshot["__typename"]! as! String
              }
              set {
                snapshot.updateValue(newValue, forKey: "__typename")
              }
            }

            public var pictureUrl: String? {
              get {
                return snapshot["pictureUrl"] as? String
              }
              set {
                snapshot.updateValue(newValue, forKey: "pictureUrl")
              }
            }
          }
        }
      }
    }
  }
}

public struct Feed: GraphQLFragment {
  public static let fragmentString =
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

  public var snapshot: Snapshot

  public init(snapshot: Snapshot) {
    self.snapshot = snapshot
  }

  public init(id: GraphQLID, date: String, post: String, user: User, likes: Int, comments: Int) {
    self.init(snapshot: ["__typename": "FeedObject", "id": id, "date": date, "post": post, "user": user.snapshot, "likes": likes, "comments": comments])
  }

  public var __typename: String {
    get {
      return snapshot["__typename"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "__typename")
    }
  }

  /// The ID of the object.
  public var id: GraphQLID {
    get {
      return snapshot["id"]! as! GraphQLID
    }
    set {
      snapshot.updateValue(newValue, forKey: "id")
    }
  }

  public var date: String {
    get {
      return snapshot["date"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "date")
    }
  }

  public var post: String {
    get {
      return snapshot["post"]! as! String
    }
    set {
      snapshot.updateValue(newValue, forKey: "post")
    }
  }

  public var user: User {
    get {
      return User(snapshot: snapshot["user"]! as! Snapshot)
    }
    set {
      snapshot.updateValue(newValue.snapshot, forKey: "user")
    }
  }

  public var likes: Int {
    get {
      return snapshot["likes"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "likes")
    }
  }

  public var comments: Int {
    get {
      return snapshot["comments"]! as! Int
    }
    set {
      snapshot.updateValue(newValue, forKey: "comments")
    }
  }

  public struct User: GraphQLSelectionSet {
    public static let possibleTypes = ["UserObject"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("username", type: .nonNull(.scalar(String.self))),
      GraphQLField("profile", type: .object(Profile.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(username: String, profile: Profile? = nil) {
      self.init(snapshot: ["__typename": "UserObject", "username": username, "profile": profile.flatMap { (value: Profile) -> Snapshot in value.snapshot }])
    }

    public var __typename: String {
      get {
        return snapshot["__typename"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "__typename")
      }
    }

    /// Required. 150 characters or fewer. Letters, digits and @/./+/-/_ only.
    public var username: String {
      get {
        return snapshot["username"]! as! String
      }
      set {
        snapshot.updateValue(newValue, forKey: "username")
      }
    }

    public var profile: Profile? {
      get {
        return (snapshot["profile"] as? Snapshot).flatMap { Profile(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "profile")
      }
    }

    public struct Profile: GraphQLSelectionSet {
      public static let possibleTypes = ["ProfileObject"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("pictureUrl", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(pictureUrl: String? = nil) {
        self.init(snapshot: ["__typename": "ProfileObject", "pictureUrl": pictureUrl])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var pictureUrl: String? {
        get {
          return snapshot["pictureUrl"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "pictureUrl")
        }
      }
    }
  }
}
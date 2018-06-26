//
//  FeedTableViewCell.swift
//  Bootcamp
//
//  Created by lichun on 6/3/18.
//  Copyright © 2018 lichun. All rights reserved.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    var feedId: String!

    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var post: UILabel!
    @IBOutlet weak var likes: UIButton!
    @IBOutlet weak var comments: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(with feed: FeedQuery.Data.Feed.Edge) {
        feedId = feed.node?.id

        self.avatar.image = UIImage(named: "avatar")
        self.avatar.layer.cornerRadius = self.avatar.frame.width / 2
        self.avatar.layer.masksToBounds = true
        if let avatarUrl = feed.node?.user.profile?.pictureUrl {
            self.avatar.sd_setImage(with: URL(string: avatarUrl))
        }
        self.post.text = feed.node?.post
        self.name.text = feed.node?.user.username
        self.date.text = feed.node?.date
        self.likes.setTitle("\(feed.node?.likes ?? 0) likes", for: .normal)
        self.comments.setTitle("\(feed.node?.comments ?? 0) comments", for: .normal)
    }

    @IBAction func like(_ sender: UIButton) {
        apollo.perform(mutation: LikeMutation(id: feedId))
    }
}

//
//  TweetCell.swift
//  twitter_alamofire_demo
//
//  Created by Charles Hieger on 6/18/17.
//  Copyright © 2017 Charles Hieger. All rights reserved.
//

import UIKit
import AlamofireImage

class TweetCell: UITableViewCell {
    
    @IBOutlet weak var tweetTextLabel: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userHandle: UILabel!
    @IBOutlet weak var dateTweeted: UILabel!
    
    @IBOutlet weak var replyButton: UIButton!
    @IBOutlet weak var retweetButton: UIButton!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var messageButton: UIButton!
    
    @IBOutlet weak var numReplyLabel: UILabel!
    @IBOutlet weak var numRetweetLabel: UILabel!
    @IBOutlet weak var numLikesLabel: UILabel!
    
    
    var tweet: Tweet! {
        didSet {
            tweetTextLabel.text = tweet.text
            userName.text = tweet.user.name
            userHandle.text = "@" + tweet.user.screenName!
            dateTweeted.text = tweet.createdAtString
            
            numReplyLabel.text = (String(tweet.retweetCount))
            numRetweetLabel.text = (String(tweet.retweetCount))
            numLikesLabel.text = (String(describing:tweet.favoriteCount!))
            
            userImage.af_setImage(withURL: tweet.user.image)
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}


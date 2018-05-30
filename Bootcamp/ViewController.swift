//
//  ViewController.swift
//  Bootcamp
//
//  Created by lichun on 2/4/18.
//  Copyright © 2018 lichun. All rights reserved.
//

import UIKit
import Apollo

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var dataArray = [String]()
    let apollo = ApolloClient(url: URL(string: "https://bootcamp.qulc.me/graphql")!)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var feedsFuckTableview: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "feeds")
        cell.textLabel?.text = self.dataArray[indexPath.row]
        return cell
    }

    @IBAction func click(_ sender: UIButton) {
        apollo.fetch(query: FeedQuery(first: 10)) { (result, error) in
            let feeds = result?.data?.feeds?.edges
            for feed in feeds! {
                self.dataArray.append((feed?.node?.post)!)
            }
            self.feedsFuckTableview.reloadData()
        }
    }

}


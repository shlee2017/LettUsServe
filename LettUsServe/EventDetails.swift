//
//  EventDetails.swift
//  EventsApp
//

import Foundation
import UIKit
import AWSAppSync


class EventDetailsViewController : UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var eventNameLabel: UILabel!
    @IBOutlet weak var whenLabel: UILabel!
    @IBOutlet weak var whereLabel: UILabel!
    @IBOutlet weak var descTextField: UITextView!
    

    // MARK: - Variables
    
    // The event to display
    var event: Event?

    // The app's AppSyncClient, used to fetch initial comment data and subscribe to new comments
    var appSyncClient: AWSAppSyncClient?

    // MARK: - Controller delegates

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let event = event {
            eventNameLabel.text = event.name
            whenLabel.text = event.when
            whereLabel.text = event.where
            descTextField.text = event.description
        }

        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
    }
}

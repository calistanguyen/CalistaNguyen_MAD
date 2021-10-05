//
//  CreateJournalEntry.swift
//  journal
//
//  Created by Calista Nguyen on 10/4/21.
//

import UIKit
import Foundation

class CreateJournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryTextField: UITextField!
    @IBOutlet weak var journalEntryDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitJournalEntry(_ sender: UIButton) {
        //https://cocoacasts.com/swift-fundamentals-how-to-convert-a-date-to-a-string-in-swift

        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM d, yyyy"

        JournalEntry.journalEntries.add(JournalEntry(date: dateFormatter.string(from: journalEntryDatePicker.date), journalText: journalEntryTextField.text!))
        
        print(JournalEntry.journalEntries)
        
        
    }
    @IBAction func alertCancel(_ sender: UIButton) {
        //if journal entry text field is not empty, alert user asking if they want to cancel
    }
}

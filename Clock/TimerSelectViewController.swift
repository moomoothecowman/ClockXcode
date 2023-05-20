//
//  TimerSelectViewController.swift
//  Clock
//
//  Created by Andrew Welch on 4/20/23.
//

import Foundation
import UIKit

class TimerSelectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pickerView.delegate = self
    }

    @IBOutlet var pickerView: UIPickerView!

    var hour: Int = 0
    var minutes: Int = 0
    var seconds: Int = 0

}

     extension TimerSelectViewController: UIPickerViewDelegate, UIPickerViewDataSource {

         func numberOfComponents(in pickerView: UIPickerView) -> Int {
             return 3
         }

         func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
             switch component {
             case 0:
                 return 25
             case 1, 2:
                 return 60
             default:
                 return 0
             }
         }

         func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
             return pickerView.frame.size.width/3
         }

         func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
             switch component {
             case 0:
                 return "\(row) Hour"
             case 1:
                 return "\(row) Minute"
             case 2:
                 return "\(row) Second"
             default:
                 return ""
             }
         }
         func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
             switch component {
             case 0:
                 hour = row
             case 1:
                 minutes = row
             case 2:
                 seconds = row
             default:
                 break;
             }
         }
     }

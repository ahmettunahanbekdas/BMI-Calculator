
import UIKit

class CalculateViewController: UIViewController {
    
    var bmiValue = "0.0"
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func heightValue(_ sender: UISlider) {
        let heightValue = sender.value
        let doubleHeight = String(format: "%.2f", heightValue)
        heightLabel.text = "\(doubleHeight)m"
    }
    
    @IBAction func weightValue(_ sender: UISlider) {
        let weightValue = sender.value
        let doubleWeight = String(format: "%.0f", weightValue)
        weightLabel.text = "\(doubleWeight)Kg"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = Double(weightSlider.value)
        
        let bmi = weight / pow(Double(height), 2)
        bmiValue = String(format: "%.1f", bmi)
        
        self.performSegue(withIdentifier: "goToResult", sender: self)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiValue
            
        }
    }
    
}



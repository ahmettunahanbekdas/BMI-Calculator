// UIKit kütüphanesini ekledik
import UIKit

// CalculateViewController adında bir sınıf oluşturduk ve bu sınıf UIViewController dan kalıtım alıyor
    class CalculateViewController: UIViewController {
// calculatorBrain adında bir nesne oluşturduk ve CalculatorBrain structımızı tanımladık
    var calculatorBrain = CalculatorBrain()
    
    // UILabel, UIKit framework'ünde yer alan bir sınıftır.
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    // UISlider, UIKit framework'ünde yer alan bir sınıftır. 
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
        let weight = weightSlider.value
        
// CalculatorBrain() structımızı tanımladığımıza göre artık hesaplama işlemini orada yapacağız fakar girdileri buradan alıcağız
        calculatorBrain.calculateBMI(weight: weight, height: height)
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
// diğer ekrana gönderilicek olan BMI değerini de artık CalculatorBrain dene alacğız
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            
        }
    }
    
}



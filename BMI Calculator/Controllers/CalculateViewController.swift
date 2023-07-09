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
// UISliderdan gelen value değerini alır formatını değiştererek bu değeri heighLabel a yazar
    @IBAction func heightValue(_ sender: UISlider) {
        let heightValue = sender.value
        let doubleHeight = String(format: "%.2f", heightValue)
        heightLabel.text = "\(doubleHeight)m"
    }
// UISliderdan gelen değeri alır formatını değiştirerek bu değeri weigtLabel a yazar
    @IBAction func weightValue(_ sender: UISlider) {
        let weightValue = sender.value
        let doubleWeight = String(format: "%.0f", weightValue)
        weightLabel.text = "\(doubleWeight)Kg"
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
// 1. CalculatorBrain() structımızı tanımladığımıza göre artık hesaplama işlemini orada yapacağız fakat girdileri buradan alıcağız
        calculatorBrain.calculateBMI(weight: weight, height: height)

        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
// diğer ekrana gönderilicek olan BMI değerini de artık CalculatorBrain dene alacğız
            destinationVC.bmiValue = calculatorBrain.getBmiValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    
}



import UIKit

class ViewController: UIViewController {

    var weight:Int = 100
    var height:Float = 1.5
    var bmi:Float = 0
    @IBOutlet weak var weightSliderCom: UISlider!
    @IBOutlet weak var heightSliderCom: UISlider!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        height = sender.value
        heightLabel.text = "\(String(format: "%0.2f", height))m"
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weight = Int(sender.value)
        weightLabel.text = "\(String(weight))Kg"
    }
    
    @IBAction func calculateBmi(_ sender: UIButton) {
        bmi = (Float(weight)/(height*height))
        print(bmi)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightLabel.text = "1.5m"
        weightLabel.text = "100Kg"
        weightSliderCom.value = Float(weight)
        heightSliderCom.value = height
    }
    
    


}

 


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scoreLbl: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var trueBtn: UIButton!
    @IBOutlet weak var falseBtn: UIButton!
    
    var quizBrain = QuizBrain()
    

    var timer = Timer()
    
    var points = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }

    @IBAction func answerBtnPressed(_ sender: UIButton) {
        
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAnswer(userAnswer)
        
        if userGotItRight{
            sender.backgroundColor = UIColor.green
            points += 1
        }else{
            sender.backgroundColor = UIColor.red

        }
        quizBrain.nextQuestion()
        
        timer = Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector( updateUI), userInfo: nil, repeats: false)
        
        
       
    }
    
   @objc func updateUI(){
       questionLbl.text = quizBrain.getQuestionText()
       progressBar.progress =  quizBrain.getProgress()
       scoreLbl.text = "Score: \(quizBrain.getScore())"
        trueBtn.backgroundColor = UIColor.clear
        falseBtn.backgroundColor = UIColor.clear
       
    }
    
}


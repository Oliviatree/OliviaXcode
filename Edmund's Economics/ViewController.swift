//
//  ViewController.swift
//  Edmund's Economics
//
//  Created by Olivia Sykes on 2017-12-26.
//  Copyright © 2017 Olivia Sykes. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    var elephantSound: AVAudioPlayer?
    var quizScore = 0
    
    //Questions
    @IBOutlet weak var Question: UILabel!
    
    //Buttons

    @IBOutlet weak var Button1: UIButton!
    @IBOutlet weak var Button2: UIButton!
    @IBOutlet weak var Button3: UIButton!
    @IBOutlet weak var Button4: UIButton!
    @IBOutlet weak var scoreDisplay: UILabel!
    
    //Correct Answers
    var correctAnswer = String()
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
         NSLog("VC Loaded")
         randomQuestions()
         NSLog("Score \(quizScore)")
         scoreDisplay.text = "\(quizScore)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // Code to play elephant sound
    func playSound()
    {
        NSLog("SoundFileCheck")
        guard let url = Bundle.main.url(forResource:"ElephantCall",withExtension: "mp3") else {return}
        NSLog("SoundFileOK")
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            elephantSound = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
            guard let aplayer = elephantSound else { return }
            aplayer.play()
            } catch let error {
            print(error.localizedDescription)
            }
     }
    
    //Randomizer
    func randomQuestions ()
    {
        var randomNumber = arc4random() % 30
        randomNumber += 1

        switch(randomNumber) {

        case 1:
            Question.text = "What does 'appreciation' mean?"
            Button1.setTitle("An increase in the value of a country’s currency in a floating exchange rate system. ", for: UIControlState.normal)
            Button2.setTitle("A persistent increase in the average level of prices.", for: UIControlState.normal)
            Button3.setTitle("Where revenue from the exports of goods and services and income flows is less than the expenditure on the import of goods and services and income flows in a given year.", for: UIControlState.normal)
            Button4.setTitle("Where a country is able to produce more output than other countries using the same input of factors of production.", for: UIControlState.normal)
            correctAnswer = "1"
            break

        case 2:

            Question.text = "What does 'allocate' mean?"
            Button1.setTitle("Import barriers that set limits on the quantity or value of imports that may be imported into a country.", for: UIControlState.normal)
            Button2.setTitle("Distribute (resources or duties) for a particular purpose.", for: UIControlState.normal)
            Button3.setTitle("(Of costs or benefits) Relating to or resulting from small changes, additional.", for: UIControlState.normal)
            Button4.setTitle("(Of costs or benefits) Relating to or resulting from large changes, supplementary.", for: UIControlState.normal)
            correctAnswer = "2"
            break

        case 3:
            Question.text = "What does 'capital' mean?"
            Button1.setTitle("The government’s bank. The institution that is responsible for an economy’s monetary policy.", for: UIControlState.normal)
            Button2.setTitle("Borrowed money.", for: UIControlState.normal)
            Button3.setTitle("The factor of production that is made by humans and is used to produce goods and services. It occurs as a result of investment.", for: UIControlState.normal)
            Button4.setTitle("Spending by households on goods and services.", for: UIControlState.normal)
            correctAnswer = "3"
            break

        case 4:
            Question.text = "What does 'demand' mean?"
            Button1.setTitle("The amount of a good or service that producers are willing and able to supply at a given price in a given time period.", for: UIControlState.normal)
            Button2.setTitle("The quantity of a product that consumers are willing and able to buy at a given price in a given time period.", for: UIControlState.normal)
            Button3.setTitle("The external benefits to a third party that occur when a product is consumed.", for: UIControlState.normal)
            Button4.setTitle("The external costs to third party that occur when a product is produced.", for: UIControlState.normal)
            correctAnswer = "2"
            break

        case 5:
            Question.text = "What does 'ceteris paribus' mean?"
            Button1.setTitle("A latin expression meaning 'a measure of the international flow of funds from trade in goods and services' used by economists to develop economic theories or models.", for: UIControlState.normal)
            Button2.setTitle("A latin expression meaning 'a measure of the responsiveness of the quantity of one good demanded in response to a change in the price' used by economists to develop economic theories or models.", for: UIControlState.normal)
            Button3.setTitle("A latin expression meaning 'a measure of inflation that factors out the changes in the prices of products' used by economists to develop economic theories or models.", for: UIControlState.normal)
            Button4.setTitle("A latin expression meaning ‘let all other things remain equal’ used by economists to develop economic theories or models.", for: UIControlState.normal)
            correctAnswer = "4"
            break

        case 6:
            Question.text = "What is the 'circular flow of income model'?"
            Button1.setTitle("A simplified model of the economy that shows the flow of money through the economy.", for: UIControlState.normal)
            Button2.setTitle("A simplified model of the economy that shows the flow of trade through the economy.", for: UIControlState.normal)
            Button3.setTitle("A simplified model of the economy that shows the flow of goods through the economy.", for: UIControlState.normal)
            Button4.setTitle("A simplified model of the economy that shows the flow of resources through the economy.", for: UIControlState.normal)
            correctAnswer = "1"
            break

        case 7:
            Question.text = "What is a 'complementary good'?"
            Button1.setTitle("Goods which are produced together, or where the production of one good involves the production of another product, e.g. meat and leather (a by-product).", for: UIControlState.normal)
            Button2.setTitle("Goods that have been processed by workers.", for: UIControlState.normal)
            Button3.setTitle("Goods that accompany others for free.", for: UIControlState.normal)
            Button4.setTitle("Goods used in combination with each other, e.g. digital cameras and memory cards.", for: UIControlState.normal)
            correctAnswer = "4"
            break
        case 8:
            Question.text = "What does 'depreciation' mean?"
            Button1.setTitle("A gradual fall in the average level of prices.", for: UIControlState.normal)
            Button2.setTitle("A persistent fall in the average level of prices.", for: UIControlState.normal)
            Button3.setTitle("A decrease in the value of a country’s currency in a floating exchange rate system.", for: UIControlState.normal)
            Button4.setTitle("A fall in the rate of inflation.", for: UIControlState.normal)
            correctAnswer = "3"
            break

        case 9:
            Question.text = "What does 'economic growth' mean?"
            Button1.setTitle("An increase in average costs in the long run.", for: UIControlState.normal)
            Button2.setTitle("A multidimensional concept involving improvement in standards of living, reduction in poverty, improved health and education along with increased freedom and economic choice.", for: UIControlState.normal)
            Button3.setTitle("The total opportunity costs of production to a firm, including the opportunity cost of entrepreneurship.", for: UIControlState.normal)
            Button4.setTitle("An increase in the actual level of output of goods and services produced by an economy, i.e. an increase in real GDP over time.", for: UIControlState.normal)
            correctAnswer = "4"
            break

        case 10:
            Question.text = "What is an 'exchange rate'?"
            Button1.setTitle("The factor of production that is made by humans and is used to produce goods and services. It occurs as a result of investment.", for: UIControlState.normal)
            Button2.setTitle("The value of one currency expressed in terms of another currency.", for: UIControlState.normal)
            Button3.setTitle("The value of one currency expressed in terms of the country's currency.", for: UIControlState.normal)
            Button4.setTitle("Any association of one or more countries where an agreement is made to reduce trade barriers.", for: UIControlState.normal)
            correctAnswer = "2"
            break

        case 11:
            Question.text = "What does 'fixed costs' mean?"
            Button1.setTitle("Costs that do not vary with the level of input.", for: UIControlState.normal)
            Button2.setTitle("Costs that do not vary with the level of output.", for: UIControlState.normal)
            Button3.setTitle("Costs which never change.", for: UIControlState.normal)
            Button4.setTitle("Costs which change depending on the currency.", for: UIControlState.normal)
            correctAnswer = "2"
            break

       case 12:
        Question.text = "What is a 'free trade area'?"
           Button1.setTitle("An agreement made between countries, where the countries agree to work towards free trade among themselves, but are able to trade with countries outside the free trade area in whatever way they wish.", for: UIControlState.normal)
        Button2.setTitle("An exchange rate regime where the value of a currency is allowed to be determined solely by the demand for, and supply of, the currency on the foreign exchange market.", for: UIControlState.normal)
            Button3.setTitle("An exchange rate regime where the value of a currency is fixed, or pegged, to the value of another currency, (or to the average value of a selection of currencies, or to the value of some other commodity, e.g. gold).", for: UIControlState.normal)
         Button4.setTitle("The set of government polices concerning its taxation and expenditure. Fiscal policy may be used to manage the level of aggregate demand (AD) and may be expansionary (to raise AD) or contractionary (to lower AD).", for: UIControlState.normal)
      correctAnswer = "1"
         break

        case 13:
            Question.text = "What does 'investment' mean?"
            Button1.setTitle("The action or process of investing money for profit.", for: UIControlState.normal)
            Button2.setTitle("Spending by firms on capital goods; the addition of capital stock to an economy.", for: UIControlState.normal)
            Button3.setTitle("The total money value of all final goods and services produced in an economy in a given time period, usually a year.", for: UIControlState.normal)
            Button4.setTitle("The amount of money given to producers of a product by the government. A subsidy increases the supply of the good by effectively lowering the firms’ costs of production.", for: UIControlState.normal)
            correctAnswer = "2"
            break

        case 14:
            Question.text = "What is the 'law of demand'?"
            Button1.setTitle("The income received by a firm from selling its product.", for: UIControlState.normal)
            Button2.setTitle("Prices give signal to both producers and consumers. A rising price gives a signal to producers that they should increase their quantity supplied and signals to consumers that they should decrease the quantity demanded, and vice versa.", for: UIControlState.normal)
            Button3.setTitle("As the price of a product increases, the quantity demanded increases, ceteris paribus.", for: UIControlState.normal)
            Button4.setTitle("As the price of a product increases, the quantity demanded decreases, ceteris paribus.", for: UIControlState.normal)
            correctAnswer = "4"
            break
            
        case 15:
            Question.text = "What is the 'law of supply'?"
            Button1.setTitle("As the price of a product increases, the quality decreases, ceteris paribus.", for: UIControlState.normal)
            Button2.setTitle("As the quality of a product increases, the quantity supplied decreases, ceteris paribus.", for: UIControlState.normal)
            Button3.setTitle("As the price of a product increases, the quantity supplied decreases, ceteris paribus.", for: UIControlState.normal)
            Button4.setTitle("As the price of a product increases, the quantity supplied increases, ceteris paribus.", for: UIControlState.normal)
            correctAnswer = "4"
            break
            
        case 16:
            Question.text = "What does 'marginal cost' mean?"
            Button1.setTitle("The complete cost of producing a level of output. ", for: UIControlState.normal)
            Button2.setTitle("A persistent increase in the average price level that comes about as a result of increases in the costs of production and a decrease in aggregate supply (AS).", for: UIControlState.normal)
            Button3.setTitle("The addition to total cost of producing one extra unit of output.", for: UIControlState.normal)
            Button4.setTitle("The private cost to the consumer of producing an additional unit of output.", for: UIControlState.normal)
            correctAnswer = "3"
            break
            
        case 17:
            Question.text = "What does 'market' mean?"
            Button1.setTitle("A place where buyers and sellers of a product come together to make an exchange, or a trade. A market does not need to be a physical place, e.g. a stock market or foreign exchange market, where the product is traded via computers.", for: UIControlState.normal)
            Button2.setTitle("A large number of small firms, producing differentiated products, with no barriers to entry or exit.", for: UIControlState.normal)
            Button3.setTitle("Goods which are produced together, or where the production of one good involves the production of another product, e.g. meat and leather (a by-product).", for: UIControlState.normal)
            Button4.setTitle("Where firms in an oligopoly do not resort to agreements to fix prices or output. Competition tends to be non-price. Prices tend to be stable.", for: UIControlState.normal)
            correctAnswer = "1"
            break
            
        case 18:
            Question.text = "What does 'equilibrium' mean?"
            Button1.setTitle("The point where the quantity of a product demanded is not equal to the quantity of a product supplied. This creates the market clearing price and quantity where there is excess demand or excess supply.", for: UIControlState.normal)
            Button2.setTitle("The point where the quantity of a product demanded is equal to the quantity of a product supplied. This creates the market clearing price and quantity where there is no excess demand or excess supply.", for: UIControlState.normal)
            Button3.setTitle("The point where the quantity of a product produced is equal to the quantity of a product bought. This creates the market clearing price and quantity where there is no excess demand or excess supply.", for: UIControlState.normal)
            Button4.setTitle("The point where the quantity of a product produced is not equal to the quantity of a product bought. This creates the market clearing price and quantity where there is no excess demand or excess supply.", for: UIControlState.normal)
            correctAnswer = "2"
            break
            
        case 19:
            Question.text = "What does 'monopoly' mean?"
            Button1.setTitle("A market structure where there is only one firm, or a dominant firm, in the industry. There are high barriers to entry.", for: UIControlState.normal)
            Button2.setTitle("A market structure characterized by a small number of large firms dominating the industry due to high barriers to entry.", for: UIControlState.normal)
            Button3.setTitle("A market structure charaterized by a large number of small firms, producing differentiated products, with no barriers to entry or exit.", for: UIControlState.normal)
            Button4.setTitle("A market structure where there are multiple firms in the industry. There are no barriers to entry.", for: UIControlState.normal)
            correctAnswer = "1"
            break
            
        case 20:
            Question.text = "What does 'opportunity cost' mean?"
            Button1.setTitle("The next best alternative foregone (sacrificed) when an economic decision is made.", for: UIControlState.normal)
            Button2.setTitle("The addition to total cost of producing one extra unit of output (MC = ∆TC/DQ).", for: UIControlState.normal)
            Button3.setTitle("Costs that do not vary with the level of output.", for: UIControlState.normal)
            Button4.setTitle("Include the complete cost of producing a level of output.", for: UIControlState.normal)
            correctAnswer = "1"
            break
            
        case 21:
            Question.text = "What does 'profit' mean?"
            Button1.setTitle("", for: UIControlState.normal)
            Button2.setTitle("", for: UIControlState.normal)
            Button3.setTitle("The difference between the price of a product and the costs of production that product. Also the difference between total revenue and total costs.  Also the difference between average revenue and average costs.", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            correctAnswer = "3"
            break
            
        case 22:
            Question.text = "What does 'revenue' mean?"
            Button1.setTitle("Import barriers that set limits on the quantity or value of imports that may be imported into a country", for: UIControlState.normal)
            Button2.setTitle("The income received by a firm from selling its product.", for: UIControlState.normal)
            Button3.setTitle("", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            correctAnswer = "2"
            break
            
        case 23:
            Question.text = "What does 'scarcity' mean?"
            Button1.setTitle("", for: UIControlState.normal)
            Button2.setTitle("", for: UIControlState.normal)
            Button3.setTitle("", for: UIControlState.normal)
            Button4.setTitle("When wants and or needs (infinite)  exceed  resources (finite).", for: UIControlState.normal)
            correctAnswer = "4"
            break
            
        case 24:
            Question.text = "What does 'shortage' mean?"
            Button1.setTitle("", for: UIControlState.normal)
            Button2.setTitle("", for: UIControlState.normal)
            Button3.setTitle("Occurs where the price of a good is lower than the equilibrium price, such that the quantity demanded is greater than the quantity supplied.", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            correctAnswer = "3"
            break
            
        case 25:
            Question.text = "What does 'subsidy' mean?"
            Button1.setTitle("", for: UIControlState.normal)
            Button2.setTitle("", for: UIControlState.normal)
            Button3.setTitle("", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            correctAnswer = "1"
            break
            
        case 26:
            Question.text = "What does 'substitute good' mean?"
            Button1.setTitle("", for: UIControlState.normal)
            Button2.setTitle("The amount of money given to producers of a product by the government. A subsidy increases the supply of the good by effectively lowering the firms’ costs of production.", for: UIControlState.normal)
            Button3.setTitle("", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            correctAnswer = "2"
            break
            
        case 27:
            Question.text = "What does 'supply' mean?"
            Button1.setTitle("", for: UIControlState.normal)
            Button2.setTitle("", for: UIControlState.normal)
            Button3.setTitle("", for: UIControlState.normal)
            Button4.setTitle("The amount of a good or service that producers are willing and able to supply at a given price in a given time period.", for: UIControlState.normal)
            correctAnswer = "4"
            break
            
        case 28:
            Question.text = "What does 'surplus' mean?"
            Button1.setTitle("", for: UIControlState.normal)
            Button2.setTitle("", for: UIControlState.normal)
            Button3.setTitle("Occurs where the price of a good is higher than the equilibrium price, such that the quantity supplied is greater than the quantity demanded.", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            correctAnswer = "3"
            break
            
        case 29:
            Question.text = "What does 'trade' mean?"
            Button1.setTitle("", for: UIControlState.normal)
            Button2.setTitle("", for: UIControlState.normal)
            Button3.setTitle("The exchange of goods or services between two countries.", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            correctAnswer = "3"
            break
            
        case 30:
            Question.text = "What does 'utility' mean?"
            Button1.setTitle("", for: UIControlState.normal)
            Button2.setTitle("", for: UIControlState.normal)
            Button3.setTitle("", for: UIControlState.normal)
            Button4.setTitle("", for: UIControlState.normal)
            correctAnswer = "1"
            break
            
        default:

            break
        }
    }

    //Buttons Action
    
    @IBAction func ButtonOnePressed(_ sender: UIButton) {
        randomQuestions()
        if (correctAnswer == "1") {
            NSLog("Correct!")
            quizScore = quizScore + 100
            playSound()
            self.performSegue(withIdentifier: "ShowCorrectScreen", sender: nil)
        }
        else{
            NSLog("Incorrect!")
            self.performSegue(withIdentifier: "ShowIncorrectScreen", sender: nil)
        }
    }
    
    @IBAction func Button2Action(_ sender: Any) {
        randomQuestions()
        if (correctAnswer == "2") {
            NSLog("Correct!")
            quizScore = quizScore + 100
            playSound()
            self.performSegue(withIdentifier: "ShowCorrectScreen", sender: nil)
        }
        else{
            NSLog("Incorrect!")
            self.performSegue(withIdentifier: "ShowIncorrectScreen", sender: nil)
        }
    }
    
    @IBAction func Button3Action(_ sender: Any) {
        randomQuestions()
        if (correctAnswer == "3") {
            NSLog("Correct!")
            quizScore = quizScore + 100
            playSound()
            self.performSegue(withIdentifier: "ShowCorrectScreen", sender: nil)
        }
        else{
            NSLog("Incorrect!")
            self.performSegue(withIdentifier: "ShowIncorrectScreen", sender: nil)
        }
    }
    
    @IBAction func Button4Action(_ sender: Any) {
        randomQuestions()
        if (correctAnswer == "4") {
            NSLog("Correct!")
            quizScore = quizScore + 100
            playSound()
            self.performSegue(withIdentifier: "ShowCorrectScreen", sender: nil)
        }
        else{
            NSLog("Incorrect!")
            self.performSegue(withIdentifier: "ShowIncorrectScreen", sender: nil)
        }
    }
    
    @IBAction func NextQuestion(_ sender: Any) {
        randomQuestions()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CorrectAnswerViewController {
            destination.holdPoints = quizScore
        }
        if let destination = segue.destination as? IncorrectAnswerViewController {
            destination.holdPoints = quizScore
        }
 //       if let destination = segue.destination as? StartScreenViewController {
 //           destination.holdPoints = quizScore
 //       }
    }
  
}









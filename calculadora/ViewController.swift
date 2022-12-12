//
//  ViewController.swift
//  calculadora
//
//  Created by Abdiel Mg on 12/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    var aux = ""
    var operation = 0
    
    @IBOutlet weak var pantalla: UITextField!
    
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b0: UIButton!
    
    
    @IBOutlet weak var limpiar: UIButton!
    @IBOutlet weak var dividir: UIButton!
    @IBOutlet weak var multiplicar: UIButton!
    @IBOutlet weak var restar: UIButton!
    @IBOutlet weak var sumar: UIButton!
    @IBOutlet weak var igual: UIButton!
    @IBOutlet weak var punto: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ab9(_ sender: Any) {
        concatenate("9")
    }
    
    @IBAction func ab8(_ sender: Any) {
        concatenate("8")
    }
    
    @IBAction func ab7(_ sender: Any) {
        concatenate("7")
    }
    
    @IBAction func ab6(_ sender: Any) {
        concatenate("6")
    }
    
    @IBAction func ab5(_ sender: Any) {
        concatenate("5")
    }
    
    @IBAction func ab4(_ sender: Any) {
        concatenate("4")
    }
    
    @IBAction func ab3(_ sender: Any) {
        concatenate("3")
    }
    
    @IBAction func ab2(_ sender: Any) {
        concatenate("2")
    }
    
    @IBAction func ab1(_ sender: Any) {
        concatenate("1")
    }
    
    @IBAction func ab0(_ sender: Any) {
        concatenate("0")
    }
    
    @IBAction func punto(_ sender: Any) {
        concatenate(".")
    }
    
    
    @IBAction func limpiar(_ sender: Any) {
        cleanScreen()
    }
    
    @IBAction func dividir(_ sender: Any) {
        if(operation == 0){
            operation(1)
        }else{
            equals(operation, Double(aux) ?? 0)
            operation(1)
        }
    
    }
    
    @IBAction func multiplicar(_ sender: Any) {
        if(operation == 0){
            operation(2)
        }else{
            equals(operation, Double(aux) ?? 0)
            operation(2)
        }
    }
    
    @IBAction func menos(_ sender: Any) {
        if(operation == 0){
            operation(3)
        }else{
            equals(operation, Double(aux) ?? 0)
            operation(3)
        }
    }
    
    @IBAction func mas(_ sender: Any) {
        if(operation == 0){
            operation(4)
        }else{
            equals(operation, Double(aux) ?? 0)
            operation(4)
        }
    }
    
    @IBAction func igual(_ sender: Any) {
        equals(operation, Double(aux) ?? 0)
        operation = 0
    }
    
    
    
    
    func concatenate(_ number: String){
        pantalla.text = (pantalla.text ?? "") + number
    }
    
    func cleanScreen(){
        pantalla.text = ""
        operation = 0
    }
    
    func operation(_ option: Int){
        aux = (pantalla.text ?? "0")
        cleanScreen()
        operation = option
    }
    
    func equals(_ option: Int, _ aux: Double){
        
        let screenText = Double(pantalla.text ?? "0")
        
        switch option{

        case 1:
            if (aux == 0) {
                pantalla.text = "NA"
            }else{
                pantalla.text = String(aux/(screenText ?? 0))
            }
        case 2:
            pantalla.text = String(aux*(screenText ?? 0))
            
        case 3:
            pantalla.text = String(aux-(screenText ?? 0))

        case 4:
            pantalla.text = String(aux+(screenText ?? 0))

        default:
            pantalla.text = "NA"
        }
        
    }
    
}


//
//  ViewController.swift
//  Postcard
//
//  Created by David Ross Santos on 02/10/14.
//  Copyright (c) 2014 Terceiro Andar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Clicando no botão, o label é revelado
        messageLabel.hidden = false
        
        //Modifica o texto do label para o que está no campo Mensagem
        messageLabel.text = enterMessageTextField.text
        
        //Modificando a cor da mensagem após clicar em Enviar
        messageLabel.textColor = UIColor.redColor()
        
        //Remover o valor do campo Mensagem
        enterMessageTextField.text = ""
        
        //Esconde o teclado após o envio da mensagem
        enterMessageTextField.resignFirstResponder()
        
        //Atualizar o título do butão
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        
    }

    
    
}


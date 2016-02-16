//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet var deleteButton: UIButton!
    @IBOutlet var returnButton: UIButton!
    @IBOutlet var spaceButton: UIButton!
    
    @IBOutlet var wednesdayButton: UIButton!
    @IBOutlet var africaButton: UIButton!
    @IBOutlet var sickButton: UIButton!
    @IBOutlet var feminismButton: UIButton!
    @IBOutlet var mouseButton: UIButton!
    @IBOutlet var shoppingButton: UIButton!
    @IBOutlet var octoberButton: UIButton!
    
    @IBOutlet var psychicButton: UIButton!
    @IBOutlet var threePoundsButton: UIButton!
    @IBOutlet var punchButton: UIButton!
    @IBOutlet var caesarButton: UIButton!
    @IBOutlet var rainButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }
    
    func delete(){
        [self.textDocumentProxy .deleteBackward()]
    }
    
    func newLine(){
        [self.textDocumentProxy .insertText("\n")]
    }
    
    func space(){
        [self.textDocumentProxy .insertText(" ")]
    }
    
    func wednesday(){
        [self.textDocumentProxy .insertText("On Wednesdays we wear pink! ")]
    }
    
    func africa(){
        [self.textDocumentProxy .insertText("If you’re from Africa, why are you white? ")]
    }
    
    func sick(){
        [self.textDocumentProxy .insertText("I can't go out. *cough cough* I'm sick. ")]
    }
    
    func feminism(){
        [self.textDocumentProxy .insertText("That's just, like, the rules of feminism. ")]
    }
    
    func mouse(){
        [self.textDocumentProxy .insertText("I'm a mouse, duh. ")]
    }
    
    func shopping(){
        [self.textDocumentProxy .insertText("Get in loser, we're going shopping. ")]
    }
    
    func october(){
        [self.textDocumentProxy .insertText("On October 3rd, he asked me what day it was. ")]
    }
    
    func psychic(){
        [self.textDocumentProxy .insertText("I’m kind of psychic. I have a fifth sense. It’s like I have ESPN or something. ")]
    }
    
    func threePounds(){
        [self.textDocumentProxy .insertText("I want to lose three pounds. ")]
    }
    
    func punch(){
        [self.textDocumentProxy .insertText("One time, she punched me in the face. It was awesome. ")]
    }
    
    func caesar(){
        [self.textDocumentProxy .insertText("Brutus is just as cute as Caesar. Brutus is just as smart as Caesar. People totally like Brutus just as much as they like Caesar. And when did it become okay for one person to be the boss of everybody, huh? Because that’s not what Rome is about. We should totally just stab Caesar! ")]
    }
    
    func rain(){
        [self.textDocumentProxy .insertText("There’s a 30% chance that it’s already raining! ")]
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) //advanceToNextInputMode is already defined in template
        deleteButton.addTarget(self, action: "delete", forControlEvents: .TouchUpInside)
        returnButton.addTarget(self, action: "newLine", forControlEvents: .TouchUpInside)
        spaceButton.addTarget(self, action: "space", forControlEvents: .TouchUpInside)
        
        wednesdayButton.addTarget(self, action: "wednesday", forControlEvents: .TouchUpInside)
        africaButton.addTarget(self, action: "africa", forControlEvents: .TouchUpInside)
        sickButton.addTarget(self, action: "sick", forControlEvents: .TouchUpInside)
        feminismButton.addTarget(self, action: "feminism", forControlEvents: .TouchUpInside)
        mouseButton.addTarget(self, action: "mouse", forControlEvents: .TouchUpInside)
        shoppingButton.addTarget(self, action: "shopping", forControlEvents: .TouchUpInside)
        octoberButton.addTarget(self, action: "october", forControlEvents: .TouchUpInside)
        
        psychicButton.addTarget(self, action: "psychic", forControlEvents: .TouchUpInside)
        threePoundsButton.addTarget(self, action: "threePounds", forControlEvents: .TouchUpInside)
        punchButton.addTarget(self, action: "punch", forControlEvents: .TouchUpInside)
        caesarButton.addTarget(self, action: "caesar", forControlEvents: .TouchUpInside)
        rainButton.addTarget(self, action: "rain", forControlEvents: .TouchUpInside)
    }


}

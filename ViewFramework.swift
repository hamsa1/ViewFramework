//
//  ViewFramework.swift
//  ViewFramework
//
//  Created by Hamsa Hassan on 3/6/18.
//  Copyright © 2018 Hamsa Hassan. All rights reserved.
//

import UIKit
public protocol sendData {
    func send(x:Int, y:Int);
}
public class ViewFramework: UIView {
    //outlets connects the xib to the class
    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak public var output: UILabel!
    public var delegate :sendData?;
    
    //@IBOutlet var addView: UIView!
    //var view: UIView!
    @IBOutlet var view: UIView!
    //function that adds two numbers and changes the value of the output label
    @IBAction func addNumbers(_ sender: UIButton) {
        let first = Int(firstNumber.text!);
        let second = Int(secondNumber.text!);
        delegate?.send(x: first!, y: second!);
//        let out = first! + second!;
//        output.text = "Output: "+String(out);
    }
    //The default initializer. You must call it only after initializing your instance variables.
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    //If this view is being reconstituted from a Nib then your custom initializer will not be called, and instead the init?(coder:) version will be called. Since Swift now requires it
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    //setup function that adds the xib to the view and sets it its bounds
    func setup() {
        self.view = UINib(nibName: "ViewFramework", bundle:
            Bundle(for:type(of: self))).instantiate(withOwner: self,
            options: nil)[0] as! UIView
        self.view.frame = bounds;
        //self.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(self.view)
    }
    
//    -(id)initWithCoder:(NSCoder *)aDecoder{
//    self = [super initWithCoder:aDecoder];
//    if(self){
//    [[NSBundle mainBundle] loadNibNamed:@"ViewFramework" owner:self options:nil];
//    // NSLog(@"%@",NSStringFromCGRect(self.frame));
//    self.bounds = self.addView.bounds;
//    [self addSubview:self.addView];
//    }
//
//    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
//    public class func add(x: Int, y:Int) -> Int{
//    return x + y;
//    }

}

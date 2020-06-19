import UIKit

public class GreetingView : UIView {
    
    @IBOutlet var contentView: UIView!
    @IBOutlet var myLabel: UILabel!

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    func commonInit() {
        let bundle = Bundle.init(for: type(of: self))
        bundle.loadNibNamed("GreetingView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }

}

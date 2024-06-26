import UIKit

open class BaseLabel: UILabel {
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        attribute()
        layout()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open func attribute() {
        // 부가적인 것을 여기에 넣습니다.
    }
    
    open func layout() {
        // 서브뷰를 구성하고 SnapKit을 사용해서 layout을 하는 함수입니다.
    }
    
    public func setPretendardFont(font: UIFont) {
        self.font = font
    }
    
    public func setColor(textColor: UIColor? = nil, backgroudColor: UIColor? = nil) {
        if let textColor = textColor {
            self.textColor = textColor
        }
        
        if let backgroudColor = backgroudColor {
            self.backgroundColor = backgroudColor
        }
    }

    public func setTextAlignmentAndNumberOfLines(alignment: NSTextAlignment? = nil, numberOfLines: Int? = nil) {
        if let alignment = alignment {
            self.textAlignment = alignment
        }
        
        if let lines = numberOfLines {
            self.numberOfLines = lines
        }
    }
}

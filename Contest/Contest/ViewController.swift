
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func enterButtonDidTouchUpInside(_ sender: Any) {
        if emailTextField.text?.isEmpty == true {
            performLabTextFieldShakeAnimation()
            //performChallengeTextFieldShakeAnimation()
        } else {
            performSegue(withIdentifier: "toEnteredView", sender: nil)
        }
        
    }
    
    private func performLabTextFieldShakeAnimation() {
        UIView.animate(withDuration: 0.2, animations: {
            let rightTransform  = CGAffineTransform(translationX: 20, y: 0)
            self.emailTextField.transform = rightTransform
        }) { (_) in
            UIView.animate(withDuration: 0.2, animations: {
                self.emailTextField.transform = CGAffineTransform.identity
            })
        }
    }
}
































// MARK: - Challenge Solution
extension ViewController {
    private func performChallengeTextFieldShakeAnimation() {
        UIView.animateKeyframes(withDuration: 0.3, delay: 0, options: [], animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 0.1) {
                self.emailTextField.transform = CGAffineTransform(translationX: 20, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.1) {
                self.emailTextField.transform = CGAffineTransform(translationX: 0, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.1) {
                self.emailTextField.transform = CGAffineTransform(translationX: -20, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.3, relativeDuration: 0.1) {
                self.emailTextField.transform = CGAffineTransform(translationX: 0, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.4, relativeDuration: 0.1) {
                self.emailTextField.transform = CGAffineTransform(translationX: 20, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.1) {
                self.emailTextField.transform = CGAffineTransform(translationX: 0, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.6, relativeDuration: 0.1) {
                self.emailTextField.transform = CGAffineTransform(translationX: -20, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.7, relativeDuration: 0.1) {
                self.emailTextField.transform = CGAffineTransform(translationX: 0, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.1) {
                self.emailTextField.transform = CGAffineTransform(translationX: 20, y: 0)
            }
            UIView.addKeyframe(withRelativeStartTime: 0.9, relativeDuration: 0.1) {
                self.emailTextField.transform = CGAffineTransform(translationX: 0, y: 0)
            }

        }, completion: nil)
    }
}

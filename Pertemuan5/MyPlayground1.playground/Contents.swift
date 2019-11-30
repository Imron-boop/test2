//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

class UIKitVC : UIViewController{
    override func loadView() {
        // func yang akan dijalankan duluan.
        // UI
        let view = UIView()
        view.backgroundColor = .white
        
        let innerView = UIView()
        innerView.backgroundColor = .cyan
        view.addSubview(innerView)
        
        let shadowView = UIView()
        shadowView.layer.masksToBounds = false
        shadowView.layer.shadowColor = UIColor.black.cgColor
        shadowView.layer.shadowRadius = 5
        shadowView.layer.shadowOpacity = 0.8
        shadowView.layer.shadowOffset = CGSize(width: 1, height: 1)
        shadowView.layer.cornerRadius = 5
        shadowView.backgroundColor = .red
        view.addSubview(shadowView)
        
        let label = UILabel()
        label.text = "Hello World"
        label.textColor = .green
        view.addSubview(label)
        
        let uiSwitch = UISwitch()
        uiSwitch.tintColor = .blue
        uiSwitch.onTintColor = .black
        uiSwitch.thumbTintColor = .yellow
        uiSwitch.isOn = true
        view.addSubview(uiSwitch)
        
        


        // Layout
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        innerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            innerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            innerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            innerView.widthAnchor.constraint(equalToConstant: 80),
            innerView.heightAnchor.constraint(equalToConstant: 80),
            
            shadowView.topAnchor.constraint(equalTo: innerView.bottomAnchor, constant: 20),
            shadowView.leadingAnchor.constraint(equalTo: innerView.leadingAnchor),
            shadowView.widthAnchor.constraint(equalToConstant: 80),
            shadowView.heightAnchor.constraint(equalToConstant: 80)
            ])
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),])
        uiSwitch.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            uiSwitch.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            uiSwitch.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 150),
            ])
        
        self.view = view
    }
}
PlaygroundPage.current.liveView = UIKitVC()


//pr switch dirubah warnanya
//label text dirubah warnanya dan bolt, metalic, underline

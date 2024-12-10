//
//  WeatherViewController.swift
//  SimpleWeather
//
//  Created by 황치현 on 12/10/24.
//

import UIKit

class WeatherViewController: UIViewController {

    //데이터를 받기 위해 설정
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    let cities = ["Seoul", "Tokyo", "New York", "Seattle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeButtonTapped(_ sender: Any) {
        
        cityLabel.text = cities.randomElement()
        
        //랜덤 날씨 이미지
        //.alwaysOriginal: 원래의 색 렌더링
        //.alwaysTemplate: 형태만 쓰고, 색은 UI 컨퍼런트 사용
        let imageName = weathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
    
        let randomTemp = Int.random(in: 1..<30)
        temperatureLabel.text = "\(randomTemp)°"
        
        print("도시, 온도, 날씨 이미지 변경하자")
    }
    
}

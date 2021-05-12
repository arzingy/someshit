//
//  ViewController.h
//  TaskWeather
//
//  Created by Daniil on 6.05.21.
//  With the help Dzmitry Semenovich
//

#import <UIKit/UIKit.h>

NSDictionary *temperatureData;
NSDictionary *windData;
NSDictionary *weatherData;
NSDictionary *humidityData;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *citiName;

@property (weak, nonatomic) IBOutlet UILabel *weather;

@property (weak, nonatomic) IBOutlet UILabel *temperature;

@property (weak, nonatomic) IBOutlet UILabel *wind;

@property (weak, nonatomic) IBOutlet UILabel *humidity;

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIButton *button;


@end


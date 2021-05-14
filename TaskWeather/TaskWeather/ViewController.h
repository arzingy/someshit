//
//  ViewController.h
//  Task2

#import <UIKit/UIKit.h>

NSDictionary *temperatureData;

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *city;

@property (weak, nonatomic) IBOutlet UILabel *temperature;

@property (weak, nonatomic) IBOutlet UITextField *textField;

@property (weak, nonatomic) IBOutlet UIButton *button;


@end


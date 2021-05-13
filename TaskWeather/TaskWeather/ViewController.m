//
//  ViewController.m
//  TaskWeather
//
//  Created by Daniil on 6.05.21.
//  With the help Dzmitry Semenovich
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    temperatureData = [NSMutableDictionary dictionary];
    weatherData = [NSMutableDictionary dictionary];
    
    _button.layer.cornerRadius = 5;
    _button.layer.borderWidth = 1;
    
    [temperatureData setValue: [NSNumber numberWithInt: 15] forKey:@"Minsk"];
    [temperatureData setValue: [NSNumber numberWithInt: 9] forKey:@"Mogilev"];
    [temperatureData setValue: [NSNumber numberWithInt: 18] forKey:@"Brest"];
    [temperatureData setValue: [NSNumber numberWithInt: 10] forKey:@"Vitebsk"];
    [temperatureData setValue: [NSNumber numberWithInt: 5] forKey:@"Gomel"];
    [temperatureData setValue: [NSNumber numberWithInt: 0] forKey:@"Grodno"];

    

    
}

- (IBAction)button:(id)sender {
    
    
    NSString *city = self.textField.text;
    self.citiName.text = city;
    self.temperature.text = [temperatureData[city] stringValue];
    
    
    [[self textField] resignFirstResponder];
    
    NSNumber *temperature = temperatureData[city];
    int intValue=[temperature intValue];
    if(intValue>=18)
    {
        self.view.backgroundColor = [UIColor systemYellowColor];
    }
    if(intValue<18&&intValue>=15)
    {
        self.view.backgroundColor = [UIColor systemRedColor];
    }
    if(intValue>=10&&intValue<15)
    {
        self.view.backgroundColor = [UIColor systemBlueColor];
    }
    if(intValue>=9&&intValue<10)
    {
        self.view.backgroundColor = [UIColor systemGray2Color];
    }
    
    if(intValue>=5&&intValue<9)
    {
        self.view.backgroundColor = [UIColor systemGray6Color];
    }
    
    if(intValue>=0&&intValue<5)
    {
        self.view.backgroundColor = [UIColor systemGrayColor];
    }
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}

@end

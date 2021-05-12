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
    windData = [NSMutableDictionary dictionary];
    weatherData = [NSMutableDictionary dictionary];
    humidityData = [NSMutableDictionary dictionary];
    
    _button.layer.cornerRadius = 5;
    _button.layer.borderWidth = 1;
    
    [temperatureData setValue: [NSNumber numberWithInt: 15] forKey:@"Minsk"];
    [temperatureData setValue: [NSNumber numberWithInt: 9] forKey:@"Mogilev"];
    [temperatureData setValue: [NSNumber numberWithInt: 18] forKey:@"Brest"];
    [temperatureData setValue: [NSNumber numberWithInt: 10] forKey:@"Vitebsk"];
    [temperatureData setValue: [NSNumber numberWithInt: 5] forKey:@"Grodno"];
    [temperatureData setValue: [NSNumber numberWithInt: 16] forKey:@"Gomel"];
    
    [windData setValue: [NSNumber numberWithInt: 28] forKey:@"Minsk"];
    [windData setValue: [NSNumber numberWithInt: 9] forKey:@"Mogilev"];
    [windData setValue: [NSNumber numberWithInt: 12] forKey:@"Brest"];
    [windData setValue: [NSNumber numberWithInt: 5] forKey:@"Vitebsk"];
    [windData setValue: [NSNumber numberWithInt: 25] forKey:@"Grodno"];
    [windData setValue: [NSNumber numberWithInt: 20] forKey:@"Gomel"];
    
    [weatherData setValue: @"Heat" forKey:@"Minsk"];
    [weatherData setValue: @"Sun" forKey:@"Mogilev"];
    [weatherData setValue: @"Drizzle" forKey:@"Brest"];
    [weatherData setValue: @"Thunderstorm" forKey:@"Vitebsk"];
    [weatherData setValue: @"Snow" forKey:@"Grodno"];
    [weatherData setValue: @"Fog" forKey:@"Gomel"];
    
    [humidityData setValue: [NSNumber numberWithInt: 33] forKey:@"Minsk"];
    [humidityData setValue: [NSNumber numberWithInt: 30] forKey:@"Mogilev"];
    [humidityData setValue: [NSNumber numberWithInt: 25] forKey:@"Brest"];
    [humidityData setValue: [NSNumber numberWithInt: 50] forKey:@"Vitebsk"];
    [humidityData setValue: [NSNumber numberWithInt: 30] forKey:@"Grodno"];
    [humidityData setValue: [NSNumber numberWithInt: 35] forKey:@"Gomel"];
    
}

- (IBAction)button:(id)sender {
    
    
    NSString *city = self.textField.text;
    self.citiName.text = city;
    self.temperature.text = [temperatureData[city] stringValue];
    self.humidity.text = [humidityData[city] stringValue];
    self.weather.text = weatherData[city];
    self.wind.text = [windData[city] stringValue];
    
    [[self textField] resignFirstResponder];
    
    NSString *weather = weatherData[city];
    
    if([weather isEqualToString:@"Sun"])
    {
        self.view.backgroundColor = [UIColor systemYellowColor];
    }
    if([weather isEqualToString:@"Heat"])
    {
        self.view.backgroundColor = [UIColor systemRedColor];
    }
    if([weather isEqualToString:@"Drizzle"])
    {
        self.view.backgroundColor = [UIColor systemBlueColor];
    }
    if([weather isEqualToString:@"Fog"])
    {
        self.view.backgroundColor = [UIColor systemGray2Color];
    }
    
    if([weather isEqualToString:@"Thunderstorm"])
    {
        self.view.backgroundColor = [UIColor systemGray6Color];
    }
    
    if([weather isEqualToString:@"Snow"])
    {
        self.view.backgroundColor = [UIColor systemGrayColor];
    }
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    return [textField resignFirstResponder];
}

@end

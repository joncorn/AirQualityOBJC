//
//  DVMWeather.m
//  AirQuality ObjC
//
//  Created by jdcorn on 12/4/19.
//  Copyright © 2019 RYAN GREENBURG. All rights reserved.
//

#import "DVMWeather.h"

@implementation DVMWeather

- (instancetype)initWithWeatherInfo:(NSInteger)temperature humidity:(NSInteger)humidity windSpeed:(NSInteger)windSpeed
{
    self = [super init];
    if (self)
    {
        _temperature = temperature;
        _humidity = humidity;
        _windSpeed = windSpeed;
    }
    return self;
}

@end

@implementation DVMWeather (JSONConvertable)

- (instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    NSInteger temperature = [dictionary[@"tp"] intValue];
    NSInteger humidity = [dictionary[@"hu"] intValue];
    NSInteger windSpeed = [dictionary[@"ws"] intValue];
    
    return [self initWithWeatherInfo:temperature humidity:humidity windSpeed:windSpeed];
}

@end

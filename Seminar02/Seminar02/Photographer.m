//
//  Photographer.m
//  Seminar02
//
//  Created by Admin on 06.03.2024.
//

#import <Foundation/Foundation.h>
#import "Photographer.h"

@interface Photographer() {
    CGFloat _minWage;
}

@end

@implementation Photographer

- (instancetype)initWithTypeOfCamera:(CameraType) cameraType {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = 0;
        _wage = 0;
    }
    return self;
}

- (instancetype)initWithTypeOfCamera:(CameraType) cameraType
                  startNumberOfPhoto: (NSInteger) startNumberOfPhoto {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = startNumberOfPhoto;
        _wage = 0;
    }
    return self;
}


- (instancetype)initWithTypeOfCamera:(CameraType) cameraType
                    startNumberOfPhoto: (NSInteger) startNumberOfPhoto
                                wage: (CGFloat) wage {
    self = [super init];
    if (self) {
        _cameraType = cameraType;
        _startNumberOfPhoto = startNumberOfPhoto;
        _wage = wage;
    }
    return self;

}

- (void) dealloc {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (CameraType)getCameraType {
    return _cameraType;
}
- (void) setCameraType: (CameraType) cameraType {
    _cameraType = cameraType;
}

- (CameraType)getStartNumberOfPhoto {
    return _startNumberOfPhoto;
}

- (void) setStartNumberOfPhoto: (NSInteger) startNumberOfPhoto {
    _startNumberOfPhoto = startNumberOfPhoto;
}

- (CGFloat)getWage {
    return _wage;
}
- (void) setWage: (CGFloat) wage {
    _wage = wage;
}

-(CGFloat) checkMoney {
    NSInteger k;
    switch (_cameraType) {
        case Nikon:
            k = 10;
            break;
        case Canon:
            k = 5;
            break;
    }
    CGFloat total = _startNumberOfPhoto * k;
    NSLog(@"%f", total);
    return total;
}

@end

//
//  Photographer.h
//  Seminar02
//
//  Created by Admin on 06.03.2024.
//

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, CameraType) {
    Canon,
    Nikon
};

@interface Photographer: NSObject {
    @private CameraType _cameraType;
    @private NSInteger _startNumberOfPhoto;
    @private NSInteger _wage;
}

- (instancetype)initWithTypeOfCamera:(CameraType) cameraType;
- (instancetype)initWithTypeOfCamera:(CameraType) cameraType
                    startNumberOfPhoto: (NSInteger) startNumberOfPhoto;
- (instancetype)initWithTypeOfCamera:(CameraType) cameraType
                    startNumberOfPhoto: (NSInteger) startNumberOfPhoto
                    wage: (CGFloat) wage;

- (void) dealloc;

- (CameraType)getCameraType;
- (void) setCameraType: (CameraType) cameraType;

- (CameraType)getStartNumberOfPhoto;
- (void) setStartNumberOfPhoto: (NSInteger) startNumberOfPhoto;

- (CGFloat)getWage;
- (void) setWage: (CGFloat) wage;

-(CGFloat) checkMoney;
@end

NS_ASSUME_NONNULL_END

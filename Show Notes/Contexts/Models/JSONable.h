@import Foundation;

@protocol JSONAble <NSObject>

- (instancetype)initWithJSON:(NSDictionary *)JSONdictionary error:(NSError *)error;

@end
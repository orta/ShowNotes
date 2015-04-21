@import MapKit;

@interface MKMapView (Sugar)

- (void)replaceAnnotationsWithNewAnnotations:(NSArray *)array animated:(BOOL)animate;
- (void)centerAroundLocation:(CLLocationCoordinate2D)location animated:(BOOL)animate;

@end

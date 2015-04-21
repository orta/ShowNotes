@import MapKit;

@implementation MKMapView (Sugar)

- (void)replaceAnnotationsWithNewAnnotations:(NSArray *)array animated:(BOOL)animate
{
    [self removeAnnotations:self.annotations];
    [self addAnnotations:array];
    [self showAnnotations:self.annotations animated:NO];

    MKMapRect zoomRect = MKMapRectNull;
    for (id <MKAnnotation> annotation in self.annotations) {
        MKMapPoint annotationPoint = MKMapPointForCoordinate(annotation.coordinate);
        MKMapRect pointRect = MKMapRectMake(annotationPoint.x, annotationPoint.y, 0, 0);
        if (MKMapRectIsNull(zoomRect)) {
            zoomRect = pointRect;
        } else {
            zoomRect = MKMapRectUnion(zoomRect, pointRect);
        }
    }
    [self setVisibleMapRect:zoomRect edgePadding:UIEdgeInsetsMake(10, 10, 10, 10) animated:animate];
}

- (void)centerAroundLocation:(CLLocationCoordinate2D)location animated:(BOOL)animate
{
    MKMapPoint annotationPoint = MKMapPointForCoordinate(location);
    MKMapRect pointRect = MKMapRectMake(annotationPoint.x, annotationPoint.y, 0, 0);
    CGFloat dist = -200;
    [self setVisibleMapRect:pointRect edgePadding:UIEdgeInsetsMake(dist, dist, dist, dist) animated:animate];
}

@end

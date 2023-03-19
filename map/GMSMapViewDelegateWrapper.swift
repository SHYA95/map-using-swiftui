



import GoogleMaps

@objc
class GMSMapViewDelegateWrapper: NSObject, GMSMapViewDelegate {
        
    var shouldHandleTap: Bool = true
    
    deinit {
        
    }
    
    func didTapMyLocationButton(for mapView: GMSMapView) -> Bool {
        return shouldHandleTap
    }
    
    func mapView(_ mapView: GMSMapView, didTapMyLocation location: CLLocationCoordinate2D) {
        
    }
    
    
    
}




import SwiftUI
import GoogleMaps
import CoreLocation
import GoogleMapsUtils

struct GoogleMapAdapterView: UIViewRepresentable {
     
    typealias UIViewType = GMSMapView
    
    private static let defaultCamera = GMSCameraPosition.camera(withLatitude: -37.8136, longitude: 144.9631, zoom: 10.0)
    private let mapView : GMSMapView
    private weak var mapDelegate: GMSMapViewDelegateWrapper?
    
    init() {
        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: GoogleMapAdapterView.defaultCamera)
        mapView.isMyLocationEnabled = true
        self.mapView = mapView
        let mapDelegateWrapper = GMSMapViewDelegateWrapper()
        self.mapDelegate = mapDelegateWrapper
        self.mapView.delegate = mapDelegateWrapper
    }
    
    /// Creates a `UIView` instance to be presented.
    func makeUIView(context: Self.Context) -> UIViewType {
        return mapView
    }

    /// Updates the presented `UIView` (and coordinator) to the latest
    /// configuration.
    func updateUIView(_ mapView: UIViewType , context: Self.Context) {
       
    }
    
   
    func update(cameraPosition: GMSCameraPosition) -> some View {
        mapView.animate(to: cameraPosition)
        return self
    }
    
    func update(zoom level: Float) -> some View {
        mapView.animate(toZoom: level)
        return self
    }

}

struct GoogleMapView_Previews: PreviewProvider {
    static var previews: some View {
        GoogleMapAdapterView()
    }
}

//
//  PlacesViewController.swift
//  DemoCocoaPods
//
//  Created by Kenyi Rodriguez on 10/30/20.
//  Copyright © 2020 Kenyi Rodriguez. All rights reserved.
//

import UIKit
import CoreLocation

class PlacesViewController: UIViewController {
    
    var arrayPlaces = [PlaceBE]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.arrayPlaces.append(PlaceBE(name: "ISIL Miraflores",
                                        address: "Av. Alfredo Benavides 778, Cercado de Lima 15074",
                                        coordinate: CLLocationCoordinate2D(latitude: -12.125423, longitude: -77.024843),
                                        urlImage: "https://hotelperunews.com/wp-content/uploads/2017/04/isil-2.png"))
        
        self.arrayPlaces.append(PlaceBE(name: "ISIL San Isidro",
                                        address: "Av. Faustino Sánchez Carrión 285, San Isidro 15076",
                                        coordinate: CLLocationCoordinate2D(latitude: -12.093847, longitude: -77.052979),
                                        urlImage: "https://anarixefotografia.files.wordpress.com/2013/06/sabado-1.jpg"))
        
        self.arrayPlaces.append(PlaceBE(name: "ISIL La Molina",
                                        address: "Av. la Fontana 955, La Molina 15024",
                                        coordinate: CLLocationCoordinate2D(latitude: -12.073381, longitude: -76.948049),
                                        urlImage: "https://isil.pe/wp-content/uploads/2018/12/home-bg-isil.jpg"))
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let controller = segue.destination as? MapViewController {
            controller.objPlace = sender as? PlaceBE
        }
    }
}


//Sirve para construir el contenido de la tabla
extension PlacesViewController: UITableViewDataSource { //Tiene 3 metodos principales: number, number, cellFor

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayPlaces.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellIdentifier = "PlaceTableViewCell" //Debe coincidir con el nombre del storyboard y es KeySensitive
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! PlaceTableViewCell
        cell.objPlace = self.arrayPlaces[indexPath.row]
        
        return cell
    }

}

//Sirve para detectar eventos o acciones que da el usuario en la tabla
extension PlacesViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let objPlace = self.arrayPlaces[indexPath.row]
        self.performSegue(withIdentifier: "MapViewController", sender: objPlace)
    }
}





















//var arrayMarcasAutos = [
//    ["S3", "R8", "RS5", "TT RS"], //Audi
//    ["A45", "C63 AMG", "C250", "SLX300"], //Meche
//    ["M5", "Z4", "118i", "M2"] //BMW
//]

////Sirve para construir el contenido de la tabla
//extension PlacesViewController: UITableViewDataSource { //Tiene 3 metodos principales: number, number, cellFor
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return self.arrayMarcasAutos.count
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        let arrayModelBrand = self.arrayMarcasAutos[section]
//        return arrayModelBrand.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
//
//}

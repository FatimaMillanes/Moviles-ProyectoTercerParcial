//
//  DetallesRecordatoriosController.swift
//  ProyectoTercerParcial
//
//  Created by Aileen G on 24/11/21.
//

import Foundation
import UIKit

class DetallesRecordatoriosController : UIViewController{
    
    var recordatorios : Recordatorios = Recordatorios(nombre: "",clase: "", fecha:"", estatus:"", hora:"", repetir: "", musica: "", vibracion:"", tipo: "", descripcion: "")
    override func viewDidLoad() {
        self.title = recordatorios.nombre
        
    }
}



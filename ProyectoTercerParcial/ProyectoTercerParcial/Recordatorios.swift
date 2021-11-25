//
//  Recordatorios.swift
//  ProyectoTercerParcial
//
//  Created by Aileen G on 24/11/21.
//

import Foundation

class Recordatorios{
    var nombre = ""
    var clase = ""
    var fecha = ""
    var estatus = ""
    var hora = ""
    var repetir = ""
    var musica = ""
    var vibracion = ""
    var tipo = ""
    var descripcion = ""
    
    
    
    
    init(nombre: String, clase: String, fecha: String, estatus: String, hora: String, repetir: String, musica: String, vibracion: String, tipo: String, descripcion: String) {
        self.nombre	= nombre
        self.clase = clase
        self.fecha = fecha
        self.estatus = estatus
        self.hora = hora
        self.repetir = repetir
        self.musica = musica
        self.vibracion = vibracion
        self.tipo = tipo
        self.descripcion = descripcion
    }
}

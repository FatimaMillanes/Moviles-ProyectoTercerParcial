//
//  ViewController.swift
//  ProyectoTercerParcial
//
//  Created by Aileen G on 24/11/21.
//

import UIKit

class ContactosController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recordatorios.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaRecordatorio") as! CeldaRecordatoriosController
        celda.lblNombre.text = recordatorios[indexPath.row].nombre
        celda.lblClase.text = recordatorios[indexPath.row].clase
        celda.lblFecha.text = recordatorios[indexPath.row].fecha
        celda.lblEstatus.text = recordatorios[indexPath.row].estatus
        
        
        
        return celda


    }
    
    @IBOutlet weak var tvRecordatorios: UITableView!
    var recordatorios : [Recordatorios] = []


    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Recordatorios"
        // Do any additional setup after loading the view.
        recordatorios.append(Recordatorios(nombre: "Proyecto de Móviles", clase: "Programación de dispositivos móviles", fecha: "24/11/2021", estatus: "En proceso", hora:"1:00", repetir: "si", musica: "chimes", vibracion: "no", tipo: "escuela",descripcion: "proyecto en el que debemos de realizar una aplicacion movil"))
        recordatorios.append(Recordatorios(nombre: "Modelado 3d de Memo", clase: "Modelado", fecha: "03/11/2021", estatus: "Completada", hora:"2:00", repetir: "si", musica: "si", vibracion: "no", tipo: "escuela",descripcion: "proyecto en el que tenemos que hacer un modelo de un personaje en zbrush"))
        recordatorios.append(Recordatorios(nombre: "Tarea de personaje", clase: "Diseño de personajes", fecha: "15/09/2021", estatus: "Completada", hora:"6:00", repetir: "no", musica: "crystals", vibracion: "si", tipo: "escuela",descripcion: "tarea en la que tenemos que crear un personaje, diseñarlo y animarlo"))
        recordatorios.append(Recordatorios(nombre: "Ensayo de violencia", clase: "Historia", fecha: "26/12/2021", estatus: "Pendiente", hora:"12:00", repetir: "no", musica: "boing", vibracion: "si", tipo: "escuela",descripcion: "tarea que consiste en realizar un ensayo en equipoi de 5000 palabras acerca de la violencia en Méico"))
        recordatorios.append(Recordatorios(nombre: "Foro en plataforma", clase: "Diosito", fecha: "15/10/2021", estatus: "Pendiente", hora:"1:00", repetir: "si", musica: "sos", vibracion: "si", tipo: "escuela",descripcion: "foro en linea de clase de diosito en el que tenemos que ver un video y responder las preguntas"))
        recordatorios.append(Recordatorios(nombre: "Examen de redes", clase: "Redes computacionales", fecha: "22/11/2021", estatus: "Reprobado", hora:"7:00", repetir: "si", musica: "one direction", vibracion: "si", tipo: "escuela",descripcion: "examen de redes computacionales a carca de lo que vimos en el parcial"))
        recordatorios.append(Recordatorios(nombre: "Reporte de lectura", clase: "Español", fecha: "27/11/2021", estatus: "En proceso", hora:"8:00", repetir: "no", musica: "waves", vibracion: "si", tipo: "escuela",descripcion: "reporte de lectura del libro cartas cruzadas por markus zusak"))
        recordatorios.append(Recordatorios(nombre: "Proyecto del cable de red", clase: "Redes computacionales", fecha: "06/10/2021", estatus: "Completado", hora:"2:00", repetir: "si", musica: "tecno", vibracion: "si", tipo: "escuela",descripcion: "proyecto de la clase de redes computacionales en donde tenemos que crear un cable de red y mandar evidencia de su funcionamiento "))
        recordatorios.append(Recordatorios(nombre: "Modelo 3d de una casa", clase: "Modelado 3d", fecha: "10/09/2021", estatus: "Completado", hora:"6:00", repetir: "no", musica: "no", vibracion: "no", tipo: "escuela",descripcion: "tarea de clase de modelado en donde tenemos que recrear una casa"))
        recordatorios.append(Recordatorios(nombre: "Investigación de tratamiento", clase: "Tratamiento del habla", fecha: "18/11/2021", estatus: "Completado", hora:"5:00", repetir: "si", musica: "pong", vibracion: "si", tipo: "esuela",descripcion: "investigacion acerca de los conceptos basicos de tratamiento del habla"))
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goAdd"{
            let recordatorioseleccionado = recordatorios[tvRecordatorios.indexPathForSelectedRow!.row]
            let destino = segue.destination as! CrearRecordatorioController
            destino.recordatorios=recordatorioseleccionado
        }
        if segue.identifier == "goDetails"{
            let destino = segue.destination as! DetallesRecordatoriosController
            destino.recordatorios = recordatorios[tvRecordatorios.indexPathForSelectedRow!.row]
        }
    }
	

}



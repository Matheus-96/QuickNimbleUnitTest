//
//  InicialTableViewController.swift
//  QN Test
//
//  Created by Matheus Rodrigues Araujo on 15/01/20.
//  Copyright © 2020 Curso IOS. All rights reserved.
//

import UIKit

class InicialTableViewController: UITableViewController {
    
    var animes:[Anime] {
        return Dados.pegaAnimes()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animes.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let anime = animes[indexPath.row]
        cell.textLabel?.text = anime.nome
        cell.detailTextLabel?.text = anime.genero
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "detCont") as? SecondViewController
        controller?.nome = animes[indexPath.row].nome
        navigationController?.pushViewController(controller!, animated: true)
    }

}

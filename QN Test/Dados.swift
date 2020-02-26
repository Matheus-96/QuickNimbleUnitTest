//
//  Dados.swift
//  QN Test
//
//  Created by Matheus Rodrigues Araujo on 15/01/20.
//  Copyright © 2020 Curso IOS. All rights reserved.
//

import Foundation

struct Anime {
    let nome:String
    let genero: String
}

class Dados {
    
    static func pegaAnimes() -> [Anime] {
        return [Anime(nome: "Naruto", genero: "Battle Shounen"),
                Anime(nome: "Sailor Moon", genero: "Mahou Shoujo"),
                Anime(nome: "Tate no Yuusha no Nariagare", genero: "Isekai"),
                Anime(nome: "Dr. Stone", genero: "Shounen"),
                Anime(nome: "Pokemon", genero: "Kodomo"),
                Anime(nome: "Neon Genesis Evangelion", genero: "Mecha")]
    }
    
}

//
//  User.swift
//  Instagram
//
//  Created by Marco Alonso Rodriguez on 13/07/23.
//

import Foundation

struct User: Identifiable, Codable, Hashable {
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String?
    var bio: String?
    let email: String
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "MargotRobbie09", profileImageUrl: "margot", fullname: "Margot Robbie", bio: "She was born on 1990 and she is one of the most famous actress.", email: "margot_robbie_90@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "Dwayne Johnson", profileImageUrl: "dwayne", fullname: "Dwayne Johnson ", bio: "Dwayne Douglas Johnson​ es un actor y exluchador profesional estadounidense.​ Se desempeñó como luchador profesional para la WWE hasta su retirada oficial en 2019, ​ con el objetivo de centrarse en su carrera artística.", email: "margot_robbie_90@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "Alexandra Daddario 88", profileImageUrl: "alexandra", fullname: "Alexandra Daddario", bio: "La actriz y youtuber estadounidense de 35 años ha aparecido en cintas como ‘Percy Jackson’ y ‘Baywatch’. Sus ojos celestes cautivaron a todos los fans", email: "alexandra.dd88@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "Angelina Jolie Love", profileImageUrl: "angelina", fullname: "Angelina Jolie", bio: "Una de las más conocidas del top por su innegable talento, atractivo e inteligencia. La actriz ha sido Lara Croft en ‘Tomb Raider’, ‘Maléfica’ y en ‘Ete", email: "margot_robbie_90@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "Tom Cruise 007", profileImageUrl: "tom", fullname: "Tom Cruise", bio: "Thomas Cruise Mapother IV, más conocido como Tom Cruise, es un actor y productor de cine estadounidense ganador de tres premios Globo de Oro, un Premio Saturn y una Palma de Oro honoraria.", email: "tommy_cruise007@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: " Jennifer Aniston", profileImageUrl: "jennifer", fullname: " Jennifer Aniston", bio: "La actriz, directora, comediante y productora estadounidense ha sido reconocida en algún momento como la más hermosa del mundo. Ella saltó a la fama gracias a la serie ‘Friends’, pero luego no paró y la hemos visto en producciones como ‘The morning Show’ o ‘Una esposa de mentira’.", email: " Jennifer_Aniston@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "Jennifer Lawrence 92", profileImageUrl: "jenniferl", fullname: "Jennifer Lawrence", bio: "Actriz estadounidense que se hizo un gran nombre debido a su participación en la saga de películas ‘Los juegos del hambre’. Sin embargo, luego ha escrito su nombre en Hollywood gracias a otras películas como ‘Operación Red Sparrow’ y ‘No miren arriba’.", email: "Jennifer.Lawrence234@gmail.com"),
        
            .init(id: NSUUID().uuidString, username: "Salma Hayek 66", profileImageUrl: "salma", fullname: "Salma Hayek Pinault", bio: "Soy actriz, empresaria y productora mexicana, una de las nueve actrices latinoamericanas nominadas como mejor actriz principal o de reparto al premio Óscar.", email: "Salmita-Hayek76@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "Will Smith 68", profileImageUrl: "will", fullname: "Will Smith", bio: "Soy conocido brevemente como The Fresh Prince, soy actor, rapero y productor de cine estadounidense. He tenido éxito en mis dos facetas artísticas:​ siendo ganador de un Premio Óscar con dos nominaciones previas.", email: "william.smith@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "Marco Alonso 93", profileImageUrl: "alonso", fullname: "Marco Alonso Rodriguez", bio: "Soy desarrollador iOS y apasionado por la tecnología, me gusta enseñar asi que trabajo como maestro e instructor, subo videos a mi canal de YouTube.", email: "marcoalonsoiosdev@gmail.com"),
        
    ]
}

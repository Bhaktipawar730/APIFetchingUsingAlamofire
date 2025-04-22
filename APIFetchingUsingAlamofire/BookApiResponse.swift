//
//  BookApiResponse.swift
//  APIfechingusingAlamofire
//
//  Created by Mac on 22/04/25.

import Foundation
struct BookApiResponse:Decodable{
    var error:String
    var total:String
    var books:[Book]
    
}
struct Book:Decodable{
    var title:String
    var subtitle:String
    var isbn13:String
    var price:String
    var image:String
    var  url : String
}

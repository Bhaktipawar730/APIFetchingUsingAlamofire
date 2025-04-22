//
//  ViewController.swift
//  APIFetchingUsingAlamofire.  
//
//  Created by Mac on 22/04/25.
//

import UIKit
import Alamofire
import SDWebImage

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    var url:URL?
    var urlRequest : URLRequest?
    var books: [Book] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        fetchBooks()
            }
    
   private func fetchBooks(){
       url = URL(string: Constants.bookurl)
       urlRequest = URLRequest(url: url!)
       urlRequest?.httpMethod = "GET"
       
       AF.request(Constants.bookurl).response{
           response in switch response.result {
           case.success(let data):
               do {
                   let bookResponse = try JSONDecoder().decode(BookApiResponse.self, from: data!)
                   self.books = bookResponse.books
                   DispatchQueue.main.async {
                       self.tableView.reloadData()
                   }
                   
               }
               catch{
                   print("Decoding Error:\(error)")
               }
           case.failure(let error):
               print("Request Failed:\(error)")
           }
       }
        
    }


}

extension ViewController:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "cell") as? BookTableViewCell
        cell?.titleLabel.text = "Title = \( books[indexPath.row].title)"
        //cell?.subtitleLabel.text = books[indexPath.row].subtitle
        cell?.isbn13Label.text = "isbn13 = \( books[indexPath.row].isbn13)"
        cell?.urlLabel.text = "Url = \( books[indexPath.row].url)"
        cell?.priceLabel.text = "Price = \( books[indexPath.row].price)"
        
        if let imageURL = URL(string: books[indexPath.row].image) {
            cell?.bookimg.sd_setImage(with: imageURL, placeholderImage: UIImage(named: "placeholder"))
        }
        
        return cell!
    }
    
}

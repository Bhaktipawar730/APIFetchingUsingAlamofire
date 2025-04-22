# 📚 APIFetchingUsingAlamofire 

**APIFetchingUsingAlamofire** is an iOS application developed using **Swift**, **UIKit**, and the **MVC architectural pattern**. This project demonstrates how to consume a RESTful API using **Alamofire**, decode JSON data using the **Codable** protocol, and display it in a `UITableView` with dynamic image loading via **SDWebImage**.

---

## 🔎 Objective

The goal of this project is to:

- Understand and use third-party libraries like **Alamofire** and **SDWebImage**
- Perform API integration with **error handling**
- Decode JSON responses using Swift’s **Codable** model
- Update UI on the **main thread** after data retrieval
- Load images efficiently with **caching support**
- Structure the app using **MVC design pattern**

---

## 📌 Key Concepts Demonstrated

### ✅ Alamofire for Network Calls
- Simplifies asynchronous HTTP requests
- Performs a `GET` request to fetch book data from the **IT Bookstore API**
- Uses **closures** and the **Result** type for handling success and failure

### ✅ JSON Decoding using Codable
- API response includes a JSON object with an array of books
- `BookApiResponse` and `Book` structs conform to `Decodable` for parsing
- Extracts properties like `title`, `isbn13`, `image`, and `url`

### ✅ UITableView Integration
- Displays book list using `UITableView`
- Uses a custom cell (`BookTableViewCell`) to show book details
- Reloads data on the **main thread** with `DispatchQueue.main.async`

### ✅ SDWebImage for Asynchronous Image Loading
- Loads book cover images from image URLs
- **SDWebImage** handles downloading, caching, and displaying images
- Includes **placeholder image support** during loading

### ✅ Use of Constants
- API endpoint stored in `Constants.swift`
- Improves **maintainability** and promotes **clean code practices**

**Screenshots->**
![Screenshot-2025-04-22-at-45756-P](https://github.com/user-attachments/assets/2760064e-477e-45cc-a9c5-c7d64961b3fb)



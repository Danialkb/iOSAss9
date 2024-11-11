//
//  FavorteCollectionViewController.swift
//  iOSAss9
//
//  Created by мак on 11.11.2024.
//


import UIKit

protocol FavoriteItem {
    var title: String { get }
    var image: UIImage { get }
    var description: String { get }
    var releaseYear: Int { get }
}

class FavoriteCollectionViewController<T: FavoriteItem>: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var favoriteItems: [T] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoriteItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteItemTableCell.identifier, for: indexPath) as! FavoriteItemTableCell
        let item = favoriteItems[indexPath.row]
        
        cell.configure(item.image, item.title)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showSelectedItemDetails(favoriteItems[indexPath.row])
    }
    
    func showSelectedItemDetails(_ item: FavoriteItem) {
        
    }
}


//
//  TopSellingModel.swift
//  FashionApp
//
//  Created by Engy on 11/15/24.
//
import UIKit
struct Products {
    let title: String
    let price: String
    let image: String
    let colors: [String]
    let sizes: [String]
    let description: String
    var quantity: Int = 1
    let rating: Double?
    let category:String
}

// Top Selling
let topSellingProductsDummy: [Products] = [
    Products(
        title: "Men's Harrington Jacket",
        price: "148.00",
        image: "topsell1",
        colors: ["Lemon", "Navy", "Black"],
        sizes: ["S", "M", "L", "XL"],
        description: "Built for life and made to last, this Harrington jacket is part of our premium collection.",
        quantity: 10,
        rating: 5,
        category: "TopSelling"
    ),
    Products(
        title: "Unisex Hoodie",
        price: "18.00",
        image: "Unisex Hoodie",
        colors: ["Black", "Red", "Green"],
        sizes: ["M", "L", "XL", "XXL"],
        description: "Soft, cozy, and stylish, this unisex hoodie offers the ultimate casual comfort.",
        quantity: 15,
        rating: 5,
        category: "TopSelling"
    ),
    Products(
        title: "Leather Wallet",
        price: "349.00",
        image: "topsell4",
        colors: ["Brown", "Black"],
        sizes: ["One Size"],
        description: "Crafted from premium leather, this wallet combines elegance and functionality. Multiple compartments make it perfect for organizing your cards and cash.",
        quantity: 8,
        rating: 4,
        category: "TopSelling"
    ),
    Products(
        title: "Men's Leather Boots",
        price: "199.00",
        image: "topsell7",
        colors: ["Brown", "Black"],
        sizes: ["8", "9", "10", "11"],
        description: "Stylish and durable, these leather boots are perfect for both casual and formal occasions.",
        quantity: 12,
        rating: 4,
        category: "TopSelling"
    ),
    Products(
        title: "Men's Watch",
        price: "250.00",
        image: "topsell9",
        colors: ["Silver", "Gold"],
        sizes: ["One Size"],
        description: "This elegant watch combines modern design with traditional craftsmanship for a timeless accessory.",
        quantity: 5,
        rating: 4,
        category: "TopSelling"
    )
]
let newInProductsDummy: [Products] = [
    Products(
        title: "Women's Handbag",
        price: "180.00",
        image: "Women's Handbag",
        colors: ["Black", "Brown", "Beige"],
        sizes: ["One Size"],
        description: "This stylish handbag is designed for elegance and practicality, making it perfect for everyday use.",
        quantity: 10,
        rating: 5,
        category: "Popular"
    ),
    Products(
        title: "Unisex Hoodie",
        price: "18.00",
        image: "topsell3",
        colors: ["Black", "Red", "Green"],
        sizes: ["M", "L", "XL", "XXL"],
        description: "Soft, cozy, and stylish, this unisex hoodie offers the ultimate casual comfort.",
        quantity: 15,
        rating: 5,
        category: "BestSellers"
    ),
    Products(
        title: "Men's Harrington Jacket",
        price: "148.00",
        image: "topsell1",
        colors: ["Lemon", "Navy", "Black"],
        sizes: ["S", "M", "L", "XL"],
        description: "Built for life and made to last, this Harrington jacket is part of our premium collection.",
        quantity: 10,
        rating: 5,
        category: "TopSelling"
    ),
    Products(
        title: "Leather Wallet",
        price: "349.00",
        image: "topsell4",
        colors: ["Brown", "Black"],
        sizes: ["One Size"],
        description: "Crafted from premium leather, this wallet combines elegance and functionality.",
        quantity: 8,
        rating: 4,
        category: "Featured"
    ),
    Products(
        title: "Stylish Sunglasses",
        price: "75.00",
        image: "topsell10",
        colors: ["Black", "Brown", "Blue"],
        sizes: ["One Size"],
        description: "These stylish sunglasses offer UV protection and a sleek design, perfect for any sunny day.",
        quantity: 25,
        rating: 5,
        category: "Popular"
    ),


]

// New Offers
let newOffersProductsDummy: [Products] = [
    Products(
        title: "Leather Wallet",
        price: "349.00",
        image: "Leather Wallet",
        colors: ["Brown", "Black"],
        sizes: ["One Size"],
        description: "Premium wallet",
        quantity: 8,
        rating: 4,
        category: "NewOffers"
    ),
    Products(
        title: "Classic Cap",
        price: "50.00",
        image: "topsell5",
        colors: ["Navy Blue", "Black", "Red"],
        sizes: ["Adjustable"],
        description: "Timeless cap",
        quantity: 20,
        rating: 4,
        category: "NewOffers"
    ),
    Products(
        title: "Women's Scarf",
        price: "25.00",
        image: "Women's Scarf",
        colors: ["Pink", "Beige", "Grey"],
        sizes: ["One Size"],
        description: "Lightweight scarf",
        quantity: 18,
        rating: 4,
        category: "NewOffers"
    ),
    Products(
        title: "Stylish Sunglasses",
        price: "75.00",
        image: "Stylish Sunglasses",
        colors: ["Black", "Brown", "Blue"],
        sizes: ["One Size"],
        description: "UV sunglasses",
        quantity: 25,
        rating: 5,
        category: "NewOffers"
    )
]

let bestSellersProductsDummy: [Products] = [
    Products(
        title: "Women's Scarf",
        price: "25.00",
        image: "Women's Scarf3",
        colors: ["Pink", "Beige", "Grey"],
        sizes: ["One Size"],
        description: "Soft and lightweight scarf.",
        quantity: 18,
        rating: 4,
        category: "BestSellers"
    ),
    Products(
        title: "Men's Leather Boots",
        price: "199.00",
        image: "Men's Leather Boots2",
        colors: ["Brown", "Black"],
        sizes: ["8", "9", "10", "11"],
        description: "Stylish and durable boots.",
        quantity: 12,
        rating: 4,
        category: "BestSellers"
    ),
    Products(
        title: "Unisex Hoodie",
        price: "18.00",
        image: "topsell3",
        colors: ["Black", "Red", "Green"],
        sizes: ["M", "L", "XL", "XXL"],
        description: "Cozy and stylish hoodie.",
        quantity: 15,
        rating: 5,
        category: "BestSellers"
    ),
    Products(
        title: "Men's Watch",
        price: "250.00",
        image: "Men's Watch",
        colors: ["Silver", "Gold"],
        sizes: ["One Size"],
        description: "Timeless and elegant watch.",
        quantity: 5,
        rating: 4,
        category: "BestSellers"
    ),
    Products(
        title: "Classic Cap",
        price: "50.00",
        image: "topsell52",
        colors: ["Navy Blue", "Black", "Red"],
        sizes: ["Adjustable"],
        description: "Comfortable and stylish cap.",
        quantity: 20,
        rating: 4,
        category: "BestSellers"
    )
]

// Popular
let popularProductsDummy: [Products] = [

    Products(
        title: "Men's Harrington Jacket",
        price: "148.00",
        image: "Men's Harrington",
        colors: ["Lemon", "Navy", "Black"],
        sizes: ["S", "M", "L", "XL"],
        description: "Built for life and made to last, this Harrington jacket is part of our premium collection.",
        quantity: 10,
        rating: 5,
        category: "Popular"
    ),
    Products(
        title: "Women's Scarf",
        price: "25.00",
        image: "Women's Scarf5",
        colors: ["Pink", "Beige", "Grey"],
        sizes: ["One Size"],
        description: "Soft and lightweight, this scarf is perfect for adding a touch of elegance to any outfit.",
        quantity: 18,
        rating: 4,
        category: "Popular"
    ),
    Products(
        title: "Women's Handbag",
        price: "180.00",
        image: "Women's Handbag",
        colors: ["Black", "Brown", "Beige"],
        sizes: ["One Size"],
        description: "This stylish handbag is designed for elegance and practicality, making it perfect for everyday use.",
        quantity: 10,
        rating: 5,
        category: "Popular"
    ),

    Products(
        title: "Stylish Sunglasses",
        price: "75.00",
        image: "topsell10",
        colors: ["Black", "Brown", "Blue"],
        sizes: ["One Size"],
        description: "These stylish sunglasses offer UV protection and a sleek design, perfect for any sunny day.",
        quantity: 25,
        rating: 5,
        category: "Popular"
    ),
]
// Featured
let featuredProductsDummy: [Products] = [
    Products(
        title: "Men's Watch",
        price: "250.00",
        image: "Men's Watch2",
        colors: ["Silver", "Gold"],
        sizes: ["One Size"],
        description: "This elegant watch combines modern design with traditional craftsmanship for a timeless accessory.",
        quantity: 5,
        rating: 4,
        category: "Featured"
    ),
    Products(
        title: "Leather Wallet",
        price: "349.00",
        image: "topsell4",
        colors: ["Brown", "Black"],
        sizes: ["One Size"],
        description: "Crafted from premium leather, this wallet combines elegance and functionality.",
        quantity: 8,
        rating: 4,
        category: "Featured"
    ),
    Products(
        title: "Men's Leather Boots",
        price: "199.00",
        image: "topsell7",
        colors: ["Brown", "Black"],
        sizes: ["8", "9", "10", "11"],
        description: "Stylish and durable, these leather boots are perfect for both casual and formal occasions.",
        quantity: 12,
        rating: 4,
        category: "Featured"
    ),
    Products(
        title: "Stylish Sunglasses",
        price: "75.00",
        image: "topsell101",
        colors: ["Black", "Brown", "Blue"],
        sizes: ["One Size"],
        description: "These stylish sunglasses offer UV protection and a sleek design, perfect for any sunny day.",
        quantity: 25,
        rating: 5,
        category: "Featured"
    ),
    Products(
        title: "Unisex Hoodie",
        price: "18.00",
        image: "topsell3",
        colors: ["Black", "Red", "Green"],
        sizes: ["M", "L", "XL", "XXL"],
        description: "Soft, cozy, and stylish, this unisex hoodie offers the ultimate casual comfort.",
        quantity: 15,
        rating: 5,
        category: "Featured"
    )
]




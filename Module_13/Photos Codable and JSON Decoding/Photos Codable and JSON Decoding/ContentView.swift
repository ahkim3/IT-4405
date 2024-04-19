//
//  ContentView.swift
//  Photos Codable and JSON Decoding
//
//  Created by Andrew Kim on 4/18/24.
//

import SwiftUI
import Foundation

struct ContentView: View {
    @State private var photoCollection: PhotoCollection?

    var body: some View {
        VStack {
            if let photoCollection = photoCollection {
                List(photoCollection.photos, id: \.title) { photo in
                    VStack(alignment: .leading) {
                        if let uiImage = UIImage(named: photo.image) {
                            Image(uiImage: uiImage)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 100, height: 100)
                        }

                        Text(photo.title)
                            .font(.headline)
                        Text(photo.description)
                            .font(.subheadline)
                        Text("Date: \(photo.date)")
                            .font(.caption)
                        Text("Location: \(photo.latitude), \(photo.longitude)")
                            .font(.caption)
                    }
                }
            }
            else {
                Text("Photos not loaded")
            }
        }
        .onAppear {
            photoCollection = load(jsonFileName: "photos")
        }
    }
}

// Load photos from JSON file, which references the photos in the photos folder
func load(jsonFileName: String) -> PhotoCollection? {
    var photoCollection: PhotoCollection?
    let jsonDecoder = JSONDecoder()

    if let jsonFileUrl = Bundle.main.url(forResource: jsonFileName, withExtension: ".json"),
       let jsonData = try? Data(contentsOf: jsonFileUrl) {
            photoCollection = try? jsonDecoder.decode(PhotoCollection.self, from: jsonData)
    }

    return photoCollection
}


struct PhotoCollection: Codable {
    var status: String
    var photosPath: String
    var photos: [Photo]

    enum CodingKeys: String, CodingKey {
        case status
        case photosPath = "photos_path"
        case photos
    }
}

struct Photo: Codable {
    var image: String
    var title: String
    var description: String
    var latitude: Double
    var longitude: Double
    var date: String
}

#Preview {
    ContentView()
}

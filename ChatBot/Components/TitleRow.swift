//  TitleRow.swift
//  ChatBot
//
//  Created by Sankeshwar Sivakumar on 03/12/2022.
//

import SwiftUI

struct TitleRow: View {
    var imageUrl = URL(string: "https://people.com/thmb/JGjxumyykHNuBoeyuELz33P2uHY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(719x309:721x311)/rick-astley-recreation-never-gonna-give-you-up-081922-1-909d277568c34a599c27fa7503ce7a4c.jpg")
    var name = "Rick Astley"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageUrl) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title).bold()
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("Peach"))
    }
}

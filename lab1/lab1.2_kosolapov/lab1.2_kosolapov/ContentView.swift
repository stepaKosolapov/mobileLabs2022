//
//  ContentView.swift
//  lab1.2_kosolapov
//
//  Created by Stepan Kosolapov on 27.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State var currentDateText = "Нажмите чтобы получить дату"
    var body: some View {
        VStack(alignment: .center) {
            Spacer().frame(height: 200.0)
            Text(currentDateText).frame(maxWidth: .infinity)
            Spacer().frame(height: 40.0)
            Button(
                action: {
                    let currentDate = Date()
                    let dateFormatter = DateFormatter()

                    dateFormatter.dateStyle = .medium
                    dateFormatter.timeStyle = .medium
                    dateFormatter.locale = Locale(identifier: "ru_RU")
                    
                    self.currentDateText = dateFormatter.string(from: currentDate)
                },
                label: {
                    Text("Получить дату").frame(maxWidth: .infinity)
                }
            ).buttonStyle(.bordered)
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

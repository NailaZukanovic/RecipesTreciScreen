//
//  DetailsView.swift
//  Recepti
//
//  Created by MacLab6 on 5.11.22..
//

import SwiftUI

struct DetailsView: View {
    @StateObject var viewModel = DetailsViewModel()
    var mealId: String
    var body: some View {
        VStack{
            if let details = viewModel.details{
                Text(details.strMeal)
            }
        }.onAppear{
            viewModel.fetchDetails(mealId: mealId)
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
      DetailsView(mealId: "52772")
        
    }
}

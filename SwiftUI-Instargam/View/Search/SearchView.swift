//
//  SearchView.swift
//  SwiftUI-Instargam
//
//  Created by 水原　樹 on 2024/01/10.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @State var inSearchMode = false
    
    var body: some View {
        ScrollView{
            SearchBar(text: $searchText, isEditing: $inSearchMode)
                .padding()
            
            ZStack{
                if inSearchMode {
                    UserListView()
                }
                else {
                    PostGridView()
                }
            }
        }
    }
}

#Preview {
    SearchView()
}

//
//  FilteredList.swift
//  CoreDataProject
//
//  Created by luis armendariz on 7/23/23.
//

import SwiftUI

struct FilteredList: View {
    @FetchRequest var fetchRequest: FetchedResults<Movie>
    
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    init(filter: String) {
        _fetchRequest = FetchRequest<Movie>(sortDescriptors: [], predicate: NSPredicate(format: "director BEGINSWITH %@", filter))
    }
}

struct FilteredList_Previews: PreviewProvider {
    static var previews: some View {
        FilteredList()
    }
}

import SwiftUI

struct GeneralSidebarSection: View {
    
    @Binding var selection: SidebarPane?
    
    var body: some View {
        
        Section(header: Text("General")) {
            
            NavigationLink(
                destination: HelloWorldPane(),
                tag: .helloWorld,
                selection: $selection) {
                Label("Metrics", systemImage: "book.closed")
            }
            
            NavigationLink(
                destination: WhatsUpPane(),
                tag: .whatsUp,
                selection: $selection) {
                Label("What's Up?", systemImage: "questionmark.app.dashed")
            }
            
            NavigationLink(
                destination: AddMetrics(),
                tag: .addMetrics,
                selection: $selection) {
                Label("Add Metrics", systemImage: "plus")
            }
            
            
        }
    }
}

struct GeneralSidebarSection_Previews: PreviewProvider {
    static var previews: some View {
        GeneralSidebarSection(selection: .constant(.helloWorld))
    }
}

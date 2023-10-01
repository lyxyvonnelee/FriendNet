import SwiftUI

struct HomePageView: View {
    // Sample data for demonstration
    @State private var contacts: [Contact] = [
        Contact(id: 1, name: "John Doe", phoneNumber: "123-456-7890"),
        Contact(id: 2, name: "Jane Smith", phoneNumber: "987-654-3210")
    ]
    
    var body: some View {
        NavigationView {
            List(contacts) { contact in
                NavigationLink(destination: Text(contact.name)) { // Placeholder destination
                    VStack(alignment: .leading) {
                        Text(contact.name)
                            .font(.system(size: 22, weight: .medium, design: .rounded))
                        Text(contact.phoneNumber)
                            .font(.system(size: 18, design: .rounded))
                            .foregroundColor(.gray)
                            .padding(.top, 2)
                    }
                    .padding(.vertical, 8)
                }
            }
            .navigationTitle("Contacts")
            #if os(iOS)
            .navigationBarItems(trailing:
                Button(action: {
                    // Action to add a new contact
                    print("Add new contact")
                }) {
                    Image(systemName: "plus")
                        .font(.system(size: 24, weight: .medium))
                }
            )
            #endif
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}

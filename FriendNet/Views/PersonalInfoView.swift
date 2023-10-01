import SwiftUI

struct PersonalInfoView: View {
    var contact: Contact
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(contact.name)
                .font(.system(size: 28, weight: .medium, design: .rounded))
            
            HStack {
                Image(systemName: "phone.fill")
                    .foregroundColor(.blue)
                Text(contact.phoneNumber)
            }
            
            if let email = contact.email {
                HStack {
                    Image(systemName: "envelope.fill")
                        .foregroundColor(.blue)
                    Text(email)
                }
            }
            
            if let address = contact.address {
                HStack {
                    Image(systemName: "house.fill")
                        .foregroundColor(.blue)
                    Text(address)
                }
            }
            
            if let birthday = contact.birthday {
                HStack {
                    Image(systemName: "calendar")
                        .foregroundColor(.blue)
                    Text("\(birthday, formatter: DateFormatter.shortDate)")
                }
            }
            
            Spacer()
        }
        .padding()
        .navigationTitle("Personal Info")
    }
}

extension DateFormatter {
    static var shortDate: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
}

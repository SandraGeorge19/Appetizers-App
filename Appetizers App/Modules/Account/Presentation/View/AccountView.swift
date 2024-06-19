//
//  AccountView.swift
//  Appetizers App
//
//  Created by Developer on 12/06/2024.
//

import SwiftUI

struct AccountView: View {
    @StateObject var viewModel: AccountViewModel
    @FocusState private var focusedTF: FormTextFieldType?
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section("PERSONAL INFO") {
                        TextField("First Name", text: $viewModel.user.firstName)
                            .textContentType(.name)
                            .focused($focusedTF, equals: .firstName)
                            .onSubmit { focusedTF = .lastName }
                            .submitLabel(.next)
                        
                        TextField("Last Name", text: $viewModel.user.lastName)
                            .textContentType(.name)
                            .focused($focusedTF, equals: .lastName)
                            .onSubmit { focusedTF = .email }
                            .submitLabel(.next)
                        
                        TextField("Email", text: $viewModel.user.email)
                            .focused($focusedTF, equals: .email)
                            .onSubmit { focusedTF = nil }
                            .submitLabel(.continue)
                            .textContentType(.emailAddress)
                            .keyboardType(.emailAddress)
                            .textInputAutocapitalization(.none)
                            .autocorrectionDisabled(true )
                        DatePicker("Birthday", 
                                   selection: $viewModel.user.birthday,
                                   in: viewModel.dateRange,
                                   displayedComponents: .date )
                        Button {
                            viewModel.saveChanges()
                        } label: {
                            Text("Save Changes")
                                .foregroundStyle(.brandPrimary)
                        }
                    }
                    Section("REQUESTS") {
                        Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkin)
                        Toggle("Frequent Refills", isOn: $viewModel.user.frequentRefills)
                    }.tint(.brandPrimary)
                }
            }.navigationTitle("👨🏼‍💼 Account")
                .toolbar {
                    ToolbarItem(placement: .keyboard) {
                        Button("Dismiss") {
                            focusedTF = nil
                        }
                    }
                }
            
        }.onAppear {
            viewModel.getUser()
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, 
                  message: alert.message,
                  dismissButton: alert.dismissButton)
        }
    }
}

#Preview {
    AccountView(viewModel: AccountViewModel())
}

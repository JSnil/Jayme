// Jayme
// Deletable.swift
//
// Copyright (c) 2016 Inaka - http://inaka.net/
//
// Licensed to the Apache Software Foundation (ASF) under one
// or more contributor license agreements. See the NOTICE file
// distributed with this work for additional information
// regarding copyright ownership. The ASF licenses this file
// to you under the Apache License, Version 2.0 (the
// "License"); you may not use this file except in compliance
// with the License. You may obtain a copy of the License at
// http://www.apache.org/licenses/LICENSE-2.0
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied. See the License for the
// specific language governing permissions and limitations
// under the License.

import Foundation

/// A repository that is capable of deleting entities
public protocol Deletable: Repository {
    associatedtype EntityType: Identifiable
    var backend: URLSessionBackend { get }
}

public extension Deletable {
    
    /// Requests the only entity to be deleted from the repository.
    /// Returns a `Future` with a `Void` result or a `JaymeError`.
    public func delete() -> Future<Void, JaymeError> {
        let path = "\(self.name)"
        return self.backend.future(path: path, method: .DELETE, parameters: nil)
            .map { _ in return }
    }
    
    /// Requests the entity matching the given `id` to be deleted from the repository.
    /// Returns a `Future` with a `Void` result or a `JaymeError`.
    public func delete(id: EntityType.IdentifierType) -> Future<Void, JaymeError> {
        let path = "\(self.name)/\(id)"
        return self.backend.future(path: path, method: .DELETE, parameters: nil)
            .map { _ in return }
    }
    
}

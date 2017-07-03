//
//  RNCustomKeyboardViewController.swift
//  TypeHappy
//
//  Created by Mayank Jethva on 7/3/17.
//  Copyright © 2017 Mayank Jethva. All rights reserved.
//
import UIKit

class RNTextDocumentProxy{
    var nativeTextDocumentProxy: UITextDocumentProxy? = nil;
    init(nativeTextDocumentProxy: UITextDocumentProxy) {
        self.nativeTextDocumentProxy = nativeTextDocumentProxy
    }
    func insertText(str: String) {
        self.nativeTextDocumentProxy?.insertText(str);
    }
    func deleteBackward(){
        self.nativeTextDocumentProxy?.deleteBackward();
    }
    func hasText() ->Bool {
        return self.nativeTextDocumentProxy!.hasText;
    }
}

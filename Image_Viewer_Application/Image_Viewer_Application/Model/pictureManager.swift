//
//  pictureManager.swift
//  Image_Viewer_Application
//
//  Created by user202376 on 11/10/21.
//

import Foundation

class pictureManager
{
    private var picturelist = [picture]()
    
    func addNewPicture(n:picture)
    {
        picturelist.append(n)
    }
    
    func getAllPictures()->[picture]{
        return picturelist
    }
}

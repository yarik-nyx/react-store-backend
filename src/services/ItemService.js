import {itemRepo} from '../repos/ItemRepo.js'

class ItemService{
    async getAllItems(){
        return await itemRepo.getAllItems()
    }
}

export const itemService = new ItemService()
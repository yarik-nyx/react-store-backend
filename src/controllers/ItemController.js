import {itemService} from '../services/ItemService.js'

class ItemController{

    async getAllItems(req, res, next){
        try {
            const data = await itemService.getAllItems()
            return res.status(200).json(data)
        } catch (error) {
            next(error)
        }
    }
}

export const itemController = new ItemController()
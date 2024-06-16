import {itemService} from '../services/ItemService.js'
import { ApiError } from '../exceptions/ApiError.js'

class ItemController{

    async getAllItems(req, res, next){
        try {
            const data = await itemService.getAllItems()
            if(!data){
                return next(ApiError.NotFound())
            }
            return res.status(200).json(data)
        } catch (error) {
            next(error)
        }
    }
}

export const itemController = new ItemController()
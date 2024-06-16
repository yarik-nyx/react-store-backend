import {ramService} from '../services/RamService.js'
import { ApiError } from '../exceptions/ApiError.js'

class RamController{

    async getAllItems(req, res, next){
        try {
            const{page, limit, search, sortby, order}=req.query
            const data = await ramService.getAllItems(page, limit, search, sortby, order)
            if(data){
                return res.status(200).json(data)
            }
            return next(ApiError.NotFound())
        } catch (error) {
            next(error)
        }
    }

    async getItem(req, res, next){
        try {
            const{id}=req.params
            const data = await ramService.getItem(id)
            if(data){
                return res.status(200).json(data)
            }
            return next(ApiError.NotFound())
        } catch (error) {
            next(error)
        }
    }
}

export const ramController = new RamController()
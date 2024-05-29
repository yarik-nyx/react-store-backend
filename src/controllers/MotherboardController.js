import {motherboardService} from '../services/MotherboardService.js'

class MotherboardController{

    async getAllItems(req, res, next){
        try {
            const{page, limit, search, sortby, order}=req.query
            const data = await motherboardService.getAllItems(page, limit, search, sortby, order)
            if(data){
                return res.status(200).json(data)
            }
            return res.status(404)
        } catch (error) {
            next(error)
        }
    }

    async getItem(req, res, next){
        try {
            const{id}=req.params
            const data = await motherboardService.getItem(id)
            if(data){
                return res.status(200).json(data)
            }
            return res.status(404)
        } catch (error) {
            next(error)
        }
    }
}

export const motherboardController = new MotherboardController()
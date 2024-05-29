import {coolingService} from '../services/CoolingService.js'

class CoolingController{

    async getAllItems(req, res, next){
        try {
            const{page, limit, search, sortby, order}=req.query
            const data = await coolingService.getAllItems(page, limit, search, sortby, order)
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
            const data = await coolingService.getItem(id)
            if(data){
                return res.status(200).json(data)
            }
            return res.status(404)
        } catch (error) {
            next(error)
        }
    }
}

export const coolingController = new CoolingController()
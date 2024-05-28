import {coolingService} from '../services/CoolingService.js'

class CoolingController{

    async getAllItems(req, res, next){
        try {
            const data = await coolingService.getAllItems()
            return res.status(200).json(data)
        } catch (error) {
            next(error)
        }
    }
}

export const coolingController = new CoolingController()
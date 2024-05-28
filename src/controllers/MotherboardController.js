import {motherboardService} from '../services/MotherboardService.js'

class MotherboardController{

    async getAllItems(req, res, next){
        try {
            const data = await motherboardService.getAllItems()
            return res.status(200).json(data)
        } catch (error) {
            next(error)
        }
    }
}

export const motherboardController = new MotherboardController()
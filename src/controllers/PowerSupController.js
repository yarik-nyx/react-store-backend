import {powerSupService} from '../services/PowerSupService.js'

class PowerSupController{

    async getAllItems(req, res, next){
        try {
            const data = await powerSupService.getAllItems()
            return res.status(200).json(data)
        } catch (error) {
            next(error)
        }
    }
}

export const powerSupController = new PowerSupController()
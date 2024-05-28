import {ramService} from '../services/RamService.js'

class RamController{

    async getAllItems(req, res, next){
        try {
            const data = await ramService.getAllItems()
            return res.status(200).json(data)
        } catch (error) {
            next(error)
        }
    }
}

export const ramController = new RamController()
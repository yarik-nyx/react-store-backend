import {videocardService} from '../services/VideocardService.js'

class VideocardController{

    async getAllItems(req, res, next){
        try {
            const data = await videocardService.getAllItems()
            return res.status(200).json(data)
        } catch (error) {
            next(error)
        }
    }
}

export const videocardController = new VideocardController()
import {processorService} from '../services/processorService.js'

class ProcessorController{

    async getAllItems(req, res, next){
        try {
            const{page, limit, search}=req.query
            const data = await processorService.getAllItems(page, limit, search)
            return res.status(200).json(data)
        } catch (error) {
            next(error)
        }
    }
}

export const processorController = new ProcessorController()
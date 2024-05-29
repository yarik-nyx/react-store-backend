import {processorService} from '../services/ProcessorService.js'

class ProcessorController{

    async getAllItems(req, res, next){
        try {
            const{page, limit, search, sortby, order}=req.query
            const data = await processorService.getAllItems(page, limit, search, sortby, order)
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
            const data = await processorService.getItem(id)
            if(data){
                return res.status(200).json(data)
            }
            return res.status(404)
        } catch (error) {
            next(error)
        }
    }
}

export const processorController = new ProcessorController()
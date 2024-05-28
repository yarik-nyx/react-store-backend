import {videocardRepo} from '../repos/VideocardRepo.js'

class VideocardService{
    async getAllItems(){
        return await videocardRepo.getAllItems()
    }
}

export const videocardService = new VideocardService()
import {coolingRepo} from '../repos/CoolingRepo.js'

class CoolingService{
    async getAllItems(){
        return await coolingRepo.getAllItems()
    }
}

export const coolingService = new CoolingService()
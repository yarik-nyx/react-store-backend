import {ramRepo} from '../repos/RamRepo.js'

class RamService{
    async getAllItems(){
        return await ramRepo.getAllItems()
    }
}

export const ramService = new RamService()
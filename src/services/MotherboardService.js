import {motherboardRepo} from '../repos/MotherboardRepo.js'

class MotherboardService{
    async getAllItems(){
        return await motherboardRepo.getAllItems()
    }
}

export const motherboardService = new MotherboardService()
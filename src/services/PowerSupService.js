import {powerSupRepo} from '../repos/PowerSupRepo.js'

class PowerSupService{
    async getAllItems(){
        return await powerSupRepo.getAllItems()
    }
}

export const powerSupService = new PowerSupService()
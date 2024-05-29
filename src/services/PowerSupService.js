import {powerSupRepo} from '../repos/PowerSupRepo.js'
import Pagination from '../utils/pagination.js'
import {Op} from 'sequelize'

class PowerSupService{
    async getAllItems(page, limit, search,sortby, order){
        if(search){
            search = {
                title: {
                    [Op.like]: `%${search}%`
                }
            }
        } else {
            search = {

            }
        }
        const data = await powerSupRepo.getAllItems(search, sortby, order) 
        if(page && limit && data.length > 0){
            return Pagination(page, limit, data)
        }

        return data

        
    }

    async getItem(id){
        return await powerSupRepo.getItem(id)
    }
}

export const powerSupService = new PowerSupService()
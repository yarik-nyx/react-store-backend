import {coolingRepo} from '../repos/CoolingRepo.js'
import Pagination from '../utils/pagination.js'
import {Op} from 'sequelize'

class CoolingService{
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
        const data = await coolingRepo.getAllItems(search, sortby, order) 
        if(page && limit && data.length > 0){
            return Pagination(page, limit, data)
        }

        return data

        
    }

    async getItem(id){
        return await coolingRepo.getItem(id)
    }
}

export const coolingService = new CoolingService()
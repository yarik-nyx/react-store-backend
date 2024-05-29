import {ramRepo} from '../repos/RamRepo.js'
import Pagination from '../utils/pagination.js'
import {Op} from 'sequelize'

class RamService{
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
        const data = await ramRepo.getAllItems(search, sortby, order) 
        if(page && limit && data.length > 0){
            return Pagination(page, limit, data)
        }

        return data

        
    }

    async getItem(id){
        return await ramRepo.getItem(id)
    }
}

export const ramService = new RamService()
import {videocardRepo} from '../repos/VideocardRepo.js'
import Pagination from '../utils/pagination.js'
import {Op} from 'sequelize'

class VideocardService{
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
        const data = await videocardRepo.getAllItems(search, sortby, order) 
        if(page && limit && data.length > 0){
            return Pagination(page, limit, data)
        }

        return data

        
    }

    async getItem(id){
        return await videocardRepo.getItem(id)
    }
}

export const videocardService = new VideocardService()
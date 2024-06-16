import { ApiError } from '../exceptions/ApiError.js'
import mailService from '../services/MailService.js'

class MailController{
    async sendMail(req, res, next){
        try {
            const {email, address, items} = req.body
            if(!email || !items){
                return next(ApiError.BadRequest("В запросе должен быть email и items"))
            }
            const result = await mailService.sendMail(email, address, items)
            res.send().status(200)
        } catch (error) {
            next(error)
        }
    }
}

export const mailController = new MailController()
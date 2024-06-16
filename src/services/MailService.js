import dotenv from 'dotenv'
dotenv.config()

import Mail from '../utils/Mail.js'
import nodeMailer from 'nodemailer'

class MailService {

    constructor(){
        this.transporter = nodeMailer.createTransport({
            host:process.env.SMTP_HOST,
            port:process.env.SMTP_PORT,
            service: 'gmail',
            secure: true,
            secureConnection: false,
            auth:{
                user:process.env.SMTP_USER,
                pass: process.env.SMTP_PASS
            }
        })
    }

    async sendMail(to, address, items){
        return await this.transporter.sendMail({
            from: process.env.SMTP_USER,
            to,
            subject: `Ваш заказ`,
            text:'',
            html: Mail(address, items)

        })
    }
}

export default new MailService()
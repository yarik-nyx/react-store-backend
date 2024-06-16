import { Router } from "express";
import {mailController} from '../controllers/MailController.js'

export const mailRouter = new Router()


mailRouter.post('/', mailController.sendMail)


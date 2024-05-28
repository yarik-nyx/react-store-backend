import { Router } from "express";
import {coolingController} from '../controllers/CoolingContoller.js'

export const coolingRouter = new Router()

coolingRouter.get('/', coolingController.getAllItems)
import { Router } from "express";
import {itemController} from '../controllers/ItemController.js'

export const apiRouter = new Router()

apiRouter.get('/', itemController.getAllItems)
import { Router } from "express";
import {videocardController} from '../controllers/VideocardController.js'

export const videocardRouter = new Router()

videocardRouter.get('/', videocardController.getAllItems)
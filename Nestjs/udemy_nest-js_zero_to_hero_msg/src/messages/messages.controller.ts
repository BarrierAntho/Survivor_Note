import { Controller, Get, Post, Body, Param, NotFoundException } from '@nestjs/common';
import { CreateMessageDto } from './dtos/create-message.dto';
import { MessagesService } from './messages.service';

@Controller('messages')
export class MessagesController {    
    // Service is creating its own dependencies
    // DONT DO THIS ON REAL APPS
    // USE DEPENDENCY INJECTION
    // constructor() {
        // this.messagesService = new MessagesService();
    // }

    // MORE LONGER
    // messagesService: MessagesService;
    // constructor(messagesService: MessagesService) {
    //     this.messagesService = messagesService;
    // }
    constructor(public messagesService: MessagesService){}

    @Get()
    listMessages() {
        return this.messagesService.findall();
    }

    @Post()
    createMessages(@Body() body: CreateMessageDto) {
        return this.messagesService.create(body.content);
    }

    @Get('/:id')
    async getMessages(@Param('id') id: string) {
        const message = await this.messagesService.findOne(id);

        if (!message) {
            throw new NotFoundException('message not found');
        }

        return message;
    }
}

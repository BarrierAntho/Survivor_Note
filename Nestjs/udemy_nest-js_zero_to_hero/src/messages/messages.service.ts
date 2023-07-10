import { Injectable } from '@nestjs/common'
import { MessagesRepository } from "./messages.repository";

@Injectable()
export class MessagesService {
    // Service is creating its own dependencies
    // DONT DO THIS ON REAL APPS
    // USE DEPENDENCY INJECTION
    // constructor () {
        // this.messagesRepo = new MessagesRepository();
    // }

    // MORE LONGER
    // messagesRepo: MessagesRepository;
    // constructor(messagesRepo: MessagesRepository) {
    //     this.messagesRepo = messagesRepo;
    // }
    constructor(public messagesRepo: MessagesRepository) {}

    findOne(id: string) {
        return this.messagesRepo.findOne(id);
    }

    findall() {
        return this.messagesRepo.findAll();
    }

    create(content: string) {
        return this.messagesRepo.create(content);
    }
}
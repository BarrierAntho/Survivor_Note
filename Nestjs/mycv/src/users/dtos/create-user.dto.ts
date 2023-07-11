import { IsEmail, IsString, IsNotEmpty } from 'class-validator';
import { PrimaryGeneratedColumn } from 'typeorm';

export class CreateUserDto {
    @IsNotEmpty()
    @IsEmail()
    email: string;

    @IsNotEmpty()
    @IsString()
    password: string;
}
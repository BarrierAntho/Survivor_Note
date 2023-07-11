import { NestFactory } from '@nestjs/core';
import { ValidationPipe } from '@nestjs/common';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true // SECURITY TEST TO AVOID ANY FORWRDING OF ADDITIONAL INFORMATION
    })
  )
  await app.listen(3000);
}
bootstrap();

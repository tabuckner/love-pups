import { NestFactory } from '@nestjs/core';
import * as helmet from 'helmet';
import { DocumentBuilder, SwaggerModule } from '@nestjs/swagger';
import { AppModule } from './app.module';
import * as pkg from '../package.json';
const devMode = process.env.NODE_ENV === 'development';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const options = new DocumentBuilder()
    .setTitle('Love Pups Backend')
    .setDescription('Backend for the Love Pups project')
    .setVersion(pkg.version)
    .addTag('Love Pups')
    .build();

  const document = SwaggerModule.createDocument(app, options);
  SwaggerModule.setup('api', app, document);

  app.use(helmet());
  if (devMode) {
    app.enableCors({ origin: true });
  }

  await app.listen(3000);
}
bootstrap();

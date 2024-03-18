import { mergeApplicationConfig, ApplicationConfig } from '@angular/core';//Імпортування необхідних класів для робои з кофігурацією додатка
import { provideServerRendering } from '@angular/platform-server';//Імпортування функції для надання серверного рендерингу
import { appConfig } from './app.config';//Імпортування конфігурації дадатка

const serverConfig: ApplicationConfig = {//Створення об'єкта конфігурації серверу
  providers: [ //Визначення списку провайдерів для серверного рендерингу
    provideServerRendering()//Додавання провайдера для серверного редеринку
  ]
};

export const config = mergeApplicationConfig(appConfig, serverConfig);//Об'єднання загальної конфігурації додатка і конфігурації сервера

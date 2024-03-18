import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header.component';
import { LoginFormComponent } from './login-form.component';

@NgModule({
  declarations: [//Визначення списку декларацій
    AppComponent,
    HeaderComponent,
    LoginFormComponent
  ],
  imports: [//Визначення списку імпортів
 
  ],
  providers: [//Визначення списку провайдерів
  
  ],
  bootstrap: [AppComponent]//Визначення кореневого компонента додатка
})
export class AppModule { }//Експортування класу AppModule для можливості імпортування його в інші частини додатка

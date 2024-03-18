import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';

@Component({
  selector: 'app-root',//Селектор компонента, за яким він буде вставлений в html-шаблон
  standalone: true,//Параметр, що вказує на автономність компонента
  imports: [RouterOutlet],//Масив імпортів, які потрібно включити в компонент
  templateUrl:'./app.component.html' ,//Шлях до зовнішнього файлу шаблону компонента
  styleUrls: ['./app.component.css']//Шлях до зовнішнього файлу стилів компонента
})
export class AppComponent {
  title = 'Angularproject';//Властивість, що містить заголовок компонента
}

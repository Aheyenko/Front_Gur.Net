import { Component } from '@angular/core';//Імпорт декоратора

@Component({
  selector: 'app-header',//Селектор, за яким вставлятиметься компонент у шаблони інших компонентів
  templateUrl: './header.component.html',//Шлях до файлу шаблону компонента
  styleUrls: ['./header.component.css']//Шлях до файлу стилів компонента
})
export class HeaderComponent {
  constructor() { }
}

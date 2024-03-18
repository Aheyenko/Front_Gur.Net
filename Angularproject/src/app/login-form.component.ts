import { Component } from '@angular/core';

@Component({
  selector: 'app-login-form',
  templateUrl: './login-form.component.html',
  styleUrls: ['./login-form.component.css']
})
export class LoginFormComponent {
  email: string = ''; // змінна для зберігання email
  identificationCode: string = ''; // змінна для зберігання ідентифікаційного коду
  errorMessage: string = ''; // змінна для відображення помилок

  constructor() { }

  onSubmit(): void {
    // Виконуємо перевірку введених даних перед відправкою на сервер
    if (!this.email || !this.identificationCode) {
      this.errorMessage = 'Будь ласка, заповніть всі поля'; // Відображаємо повідомлення про неповність даних
      return;
    }
  }
}

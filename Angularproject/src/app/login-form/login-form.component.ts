import { Component } from '@angular/core';
import { AuthService } from '../auth.service';
// import {Router} from '@angular/router';

@Component({
  selector: 'app-login-form',
  templateUrl: './login-form.component.html',
  styleUrls: ['./login-form.component.scss'],
})
export class LoginFormComponent {
  identificationCode: string = '';
  email: string = '';
  errorMessage: string = ''; // змінна для відображення помилок

  constructor(private authService: AuthService) { } // Впровадження AuthService в компонент

  onSubmit(): void {
    // Виконуємо перевірку введених даних перед відправкою на сервер
    if (!this.email || !this.identificationCode) {
      this.errorMessage = 'Будь ласка, заповніть всі поля'; // Відображаємо повідомлення про неповність даних
      return;
    }
  }
}



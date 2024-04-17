import { Component } from '@angular/core';
import { Router } from "@angular/router"
import { AuthService } from '../auth.service';
import axios from 'axios';
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

  constructor(private authService: AuthService, private router: Router) { } // Впровадження AuthService в компонент

  onSubmit(): void {
    axios.post('https://localhost:7268/api/login', {
      email: this.email,
      password: this.identificationCode
    })
    .then(r => {
      if (r.status === 200)
        this.router.navigate(['/member-details/dsfsd']);
      else
        alert('not ok');
    });
    // Виконуємо перевірку введених даних перед відправкою на сервер
    if (!this.email || !this.identificationCode) {
      this.errorMessage = 'Будь ласка, заповніть всі поля'; // Відображаємо повідомлення про неповність даних
      return;
    }
  }
}



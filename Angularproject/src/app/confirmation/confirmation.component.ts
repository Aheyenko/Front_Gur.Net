import { Component} from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';


@Component({
  selector: 'app-confirmation',
  templateUrl: './confirmation.component.html',
  styleUrl: './confirmation.component.scss'
})
export class ConfirmationComponent {

  constructor(private route: ActivatedRoute, private router: Router)
{}
  confirmLogout(): void{
    this.router.navigate(['/login-form']);
  }
  cancelLogout(): void{
    this.router.navigate(['member-details/:id']);
  }
  
}

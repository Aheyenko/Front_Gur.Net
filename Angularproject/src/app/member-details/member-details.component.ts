import { Component, OnInit } from '@angular/core';
import { UsersService } from '../_services/users.service';
import { User } from '../models/user';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-member-details',
  templateUrl: './member-details.component.html',
  styleUrl: './member-details.component.scss'
})
export class MemberDetailsComponent implements OnInit {

  user: User | null = null;
  userId: string = "";

  constructor(private usersService: UsersService, private route: ActivatedRoute, private router: Router) {
    this.userId = this.route.snapshot.paramMap.get('id')!;
    console.log(this.userId);
  }
  
 
   
  
  ngOnInit(): void {
    this.user = this.generateUserFakeData();
    // this.getUserById();
  }

  getUserById() {
    this.usersService.getUser(this.userId).subscribe((user) => {
      console.log(user);
      if(user) {
        this.user = user;
      }
    }, (error) => {
      console.log(error);
      this.user = this.generateUserFakeData();
    });
  }

  private generateUserFakeData() {
    let user: User = {
     id:"userId",
     firstName: "Шрекенко",  
     userName: "Шрек",  
     middleName: "Шрекович",  
    };

    return user;
  }


  submitApplication():void{
    this.router.navigate(['/submit-application']);
  }
  

makePayment(): void{
  this.router.navigate(['/payment']);
}

goToConfirmation(): void{
  this.router.navigate(['/confirmation']);
}

}

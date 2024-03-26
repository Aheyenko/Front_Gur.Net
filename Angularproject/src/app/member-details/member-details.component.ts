import { Component, OnInit } from '@angular/core';
import { UsersService } from '../_services/users.service';
import { User } from '../models/user';

@Component({
  selector: 'app-member-details',
  templateUrl: './member-details.component.html',
  styleUrl: './member-details.component.scss'
})
export class MemberDetailsComponent implements OnInit {

  user: User | null = null;

  constructor(private usersService: UsersService) {

  }

  ngOnInit(): void {
    this.user = this.generateUserFakeData();
    // this.getUserById();
  }

  getUserById() {
    this.usersService.getUser("userId").subscribe((user) => {
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
     firstName: "Mike",  
     userName: "Wazovski",  
     middleName: "Vitaliovich",  
    };

    return user;
  }
}

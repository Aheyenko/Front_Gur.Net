export interface DormRoom {
    Number: number; 
}

export interface User {
    id: string;
    group: string;
    instituteId : string;
    institute: string;
    addres: string;
    email: string;
    dormitoryNumber: string;
    paidUntil: Date;
    dormRoom: DormRoom;
    roomNumber: number;
    phoneNumber: string;
    firstName: string;
    lastName: string;
    middleName: string;
    identificationCode: string;
}
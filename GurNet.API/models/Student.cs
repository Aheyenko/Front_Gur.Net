namespace GurNet.API.models
{
    public class Student
    {
        public int StudentId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MiddleName { get; set; }
        public int DormitoryNumber { get; set; }
        public int RoomNumber { get; set; }
        public string PhoneNumber { get; set; }
        public DateTime PaidUntil { get; set; }
        public string IdentificationCode { get; set; }
    }
}

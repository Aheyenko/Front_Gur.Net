//Імпортування необхідних модулів для текстів 
import { TestBed, ComponentFixture } from '@angular/core/testing';
import { AppComponent } from './app.component';
import { AppModule } from './app.module';

//Опис тестувального набору для AppComponent
describe('AppComponent', () => {
  let fixture: ComponentFixture<AppComponent>; //Змінна для зберігання компоненту AppComponent
  let component: AppComponent;//Змінна для зберігання екземпляру компоненту AppComponent

  //Виклик функції beforeEach, яка буде виконана перед кожним текстом
  beforeEach(async () => {
    //Конфігурація текстового середовища та імпорт модуля AppModule
    await TestBed.configureTestingModule({
      imports: [AppModule],//Імпортуємо модуть AppModule
    }).compileComponents();//Компіляція всії компонентів та шаблонів

    //Створення фікстури для компоненту AppComponent 
    fixture = TestBed.createComponent(AppComponent); 
    //Отримання екземпляру компоненту AppComponent з фікстури
    component = fixture.componentInstance;
    //Викликання методу change detection для компоненту
    fixture.detectChanges();
  });

  //Перевірка, чи компонент AppComponent успішно створений
  it('should create the app', () => {
    expect(component).toBeTruthy();
  });
});

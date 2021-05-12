using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Data.Entity;

namespace registration_clients
{
    public class Client
    {
        public string[] name = new string[3];
        public static int Amount;
        public static void Resolution(Client[] clients) //объявляем экземпляры класса
        {
            for (int i = 0; i < clients.Length; i++)
            {
                clients[i] = new Client();
            }
        }
    }
    public partial class MainWindow : Window
    {
        Client[] clients = new Client[99];
        Registration_UsersEntities context = new Registration_UsersEntities();
        CollectionViewSource clientsViewSourse;
        //CollectionViewSource scheduleViewSourse;



        public MainWindow()
        {
            InitializeComponent();
            Client.Resolution(clients); //вызываем объявление всех экземпляров
            clientsViewSourse = ((CollectionViewSource)(FindResource("clientsViewSource")));
            DataContext = this;
        }

        private void LogIn_button(object sender, RoutedEventArgs e)
        {
            //поработать с паролем
            //вывести его расписание

            Users LogInUser = null;
            string tempUserPhone = Convert.ToString(UserNumberPhone.Text).ToLower().Trim();
            string tempPassword = Convert.ToString(Password.Text);

            using (Registration_UsersEntities context = new Registration_UsersEntities())
            {
                LogInUser = context.Users.Where(b => b.phoneNumber == tempUserPhone && b.passwrd == tempPassword).FirstOrDefault(); //присваивает сущности данные этого юзера с бд
                if (LogInUser != null) //проверка пустого значения
                {
                    if (LogInUser.IDRole == 2)
                    {
                        frame.Navigate(new Hello_User_());
                    }
                    else
                    {
                        frame.Navigate(new AdministrationPanel());
                    }
                }
                else
                {
                    MessageBox.Show("Неверный логин или пароль, юзер!");
                }
            }  
        }
        private void frame_Navigated(object sender, NavigationEventArgs e)
        {

        }
        private void WindowRegistration(object sender, RoutedEventArgs e)
        {
            Input.Visibility = Visibility.Collapsed;
            InputNewUser.Visibility = Visibility.Visible;
        }


        private void GetRegistr(object sender, RoutedEventArgs e)
        {
            //после ввода, появляется frame с его расписанием
            if (NameBox.Text != String.Empty && surNameBox.Text != String.Empty && PatronymicBox.Text != String.Empty && PasswordBox.Text != String.Empty)
            {
                InputNewUser.Visibility = Visibility.Collapsed;

                Person clients = new Person  //в таблицу бд Person запись нового объекта 
                {
                    name = NameBox.Text,
                    surName = surNameBox.Text,
                    patronymic = PatronymicBox.Text,
                    Section = sections.Text,
                    roleName = Convert.ToString("User")
                };
                Users users = new Users
                {
                    passwrd = PasswordBox.Text,
                    phoneNumber = TelephoneBox.Text,
                    IDPerson = clients.IDPerson,
                    IDRole = 2
                };
                context.Person.Add(clients);
                context.Users.Add(users);//Добавление в модель EF
                InputNewUser.UpdateLayout(); //Обновление

                frame.Navigate(new Hello_User_());
                MessageBox.Show("Здравствуй, " + clients.name);
            }
            else
            {
                MessageBox.Show("Заполните все необходимые данные!");
            }
            context.SaveChanges(); //Сохранение изменений

        }
        private void Telephone_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = !(Char.IsDigit(e.Text, 0)); //принимает в TextBox только цифры 
            if (TelephoneBox.Name != null)
            {
                IsEnabled = true;
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource clientsViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("clientsViewSource")));
            // Загрузите данные, установив свойство CollectionViewSource.Source:
            // clientsViewSource.Source = [универсальный источник данных]
            context.Person.Load();
            clientsViewSourse.Source = context.Person.Local;
        }

        private void Admframe_Navigated(object sender, NavigationEventArgs e)
        {

        }
    }
}

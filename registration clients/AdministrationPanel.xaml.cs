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

namespace registration_clients
{
    /// <summary>
    /// Логика взаимодействия для AdministrationPanel.xaml
    /// </summary>
    public partial class AdministrationPanel : Page
    {
        Client[] clients = new Client[99];
        Registration_UsersEntities context = new Registration_UsersEntities();
        public AdministrationPanel()
        {
            InitializeComponent();
            Client.Resolution(clients); //вызываем объявление всех экземпляров
            DataContext = this;
        }

        private void addButton_Click(object sender, RoutedEventArgs e)
        {
            Person person = new Person
            {
                name = NameTextBox.Text,
                surName = surNameTextBox.Text,
                patronymic = PatronymicTextBox.Text,
                Section = sectionAdmin.Text,
                roleName = roleNameTextBox.Text
            };
            Users users = new Users //крашится здесь
            {
                passwrd = passwrdTextBox.Text,
                phoneNumber = numberPhoneTextBox.Text,
                IDRole = Convert.ToInt32(iDRoleTextBox.Text)
            };
            if (person != null && users != null)
            {
                context.Person.Add(person);
                context.Users.Add(users);//Добавление в модель EF
                AddClients_click.UpdateLayout(); //Обновление
            }
            else
            {
                MessageBox.Show("Вы не добавили пользователя!");
            }
            context.SaveChanges(); //Сохранение изменений
        }

        private void deleteButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void outputButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void updateButton_Click(object sender, RoutedEventArgs e)
        {

        }

        private void schedule_trainingDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //schedule_training schedules = new schedule_training //не знаю насколько это правильно, но в 
            //                                                    //табличку вообще не получается ничего вписать
            //{
            //    IDShedule = iDSheduleColumn.DisplayIndex,
            //    section = Convert.ToString(sectionColumn.DisplayIndex),
            //    schedule = Convert.ToDateTime(scheduleColumn.DisplayIndex),
            //    trainer = Convert.ToString(trainerColumn.DisplayIndex)
            //};
            //context.schedule_training.Add(schedules);
            context.SaveChanges(); //Сохранение изменений
        }
    }
}

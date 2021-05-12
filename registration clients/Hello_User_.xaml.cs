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
    /// <summary>
    /// Логика взаимодействия для Hello_User_.xaml
    /// </summary>
    public partial class Hello_User_ : Page
    {

        Registration_UsersEntities context = new Registration_UsersEntities();
        CollectionViewSource schedule_trainingViewSource;
        CollectionViewSource clientsViewSourse;
        public static void UserShedule()
        {

        }
        public Hello_User_()
        {
            InitializeComponent();
            //ClientsShedule.ItemsSource = context.shchedule_training.Local.ToBindingList();
            schedule_trainingViewSource = ((CollectionViewSource)(FindResource("schedule_trainingViewSource")));
            DataContext = this;
            context.schedule_training.Load();
            schedule_trainingViewSource.Source = context.schedule_training.Local;
        }

        private void windowGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void outputButton_Click(object sender, RoutedEventArgs e)
        {

            //Проверка на роль юзера
            //Вывод таблиц с соответствием с ролью
            //Сделать появление таблицы только после нажатия кнопки "вывести расписание"


            //var sectionUser = context.Person.
            //        Where(top => top.Section = Convert.ToString()).FirstOrDefault();

            ClientsShedule.IsReadOnly = true;
        }
    }
}

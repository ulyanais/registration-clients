   M S B A M L   `   `   `  ����O  Kregistration clients, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:registration_clientsregistration_clients  5      .    (registration_clients.AdministrationPanel   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:registration_clients     5        N� Title$  AdministrationPanel��5	       N� 
Background
 ����� � 	Resources 5
         schedule_trainingViewSource��%   &	        �� 5   
   6   5      .��5      � .+�5   
   �� -   5         ��Name$ AddClients_click��5      $��	550 0 0 0q�6/    � DataContext# [  6B   .+�5      �� $@��:Добавление нового пользователя��6   $
��Left=�6=   $��Center=�6X   �� 5      $��Имя��6   $
��Left=�6"   $��Center=�6=   �� 5      -   5         ��Name$ NameTextBox��5      $
��Left=�6+   $��23��6F   $��Center=�6�   $	��120��6�   ��6R   �� *name+ �� Mode$ TwoWay=� �� NotifyOnValidationError .  �� ValidatesOnExceptions . 6�   �� 5      $��Фамилия��6   $
��Left=�6&   $��Center=�6A   �� 5      -   5        $ surNameTextBox��5      $
��Left=�6.   $��23��6I   $��Center=�6�   $	��120��6�   ��6U   �� *	surName+$ TwoWay=� .  . 6�   �� 5      $��Отчество��6   $
��Left=�6'   $��Center=�6B   �� 5      -   5        $ PatronymicTextBox��5      $
��Left=�61   $��23��6L   $��Center=�6�   $	��120��6�   ��6X   �� *
patronymic+$ TwoWay=� .  . 6�   �� 5      $��Роль��6   $
��Left=�6#   $��Center=�6>   �� 5      -   5        	 ��Name$	 iDRoleTextBox��5      $��23��6.   $	��120��6:   $
��Left=�6F   $��12(�6a   
 �� Text
 6o   �� $ OneWay=�.@�5      �� .��6   06"   �� 5      .��6   16"   �� 5      .��6   26"   5      �� 5      $��Тип роли��6   $
��Left=�6'   $��Center=�6B   �� 5       -   5        $ roleNameTextBox��5       $
��Left=�6/   $��23��6J   $��Center=�6�   $	��120��6�   ��6V   �� *phoneNumber+$ TwoWay=� .  . 6�   �� 5!      $��Пароль��6   $
��Left=�6%   $��Center=�6@   �� 5"      -   5        $ passwrdTextBox��5"      $
��Left=�6.   $��23��6I   $��Center=�6�   $	��120��6�   ��6U   �� *	passwrd+$ TwoWay=� .  . 6�   �� 5#      $!��Номер телефона��6   $
��Left=�6-   $��Center=�6H   �� 5$      -   5        $ numberPhoneTextBox��5$      $
��Left=�62   $��23��6M   $��Center=�6�   $	��120��6�   ��6Y   �� *phoneNumber+$ TwoWay=� .  . 6�   �� 5%      $��Секция��6   $
��Left=�6%   $��Center=�6@   �� 5&      -	   5        $	 sectionAdmin��5&      $��23��6-   $	��120��69   $
��Left=�6E   $��12(�6`   
 6n   �� $ OneWay=�.@�5'      �� .��6   
Танцы6&   �� 5(      .��6   )'Групповые тренировки65   �� 5)      .��6   ФитнASS6(   �� 5*      .��6   
Йога6%   �� 5+      .��6   Стретчинг6*   �� 5,      .��6   TRX6$   5-      5.      �� 5/   
    �� Orientation$ Vertical=�6   $��Center=�6,   $��Center=�6G   $��5q�6d   .+�50      �� -
   5         ��Name$ 	addButton��50      $��Добавить��6(   $	��Top=�6S   $��23��6k   $	��120��6w   �� 51      -   5        $ outputButton��51      $%��Вывод расписания��6+   $��23��6a   $	��120��6m   �� 52      -   5        $ updateButton��52      $��Обновить��6+   $��23��6Y   $	��120��6e   53      &   System.Windows.Controls.DataGrid  54   
   -   5          Name$ schedule_trainingDataGrid��54         AutoGenerateColumns .     EnableRowVirtualization .    RowDetailsVisibilityMode$ VisibleWhenSelected=�6�   $��36,10,352,299q�6�   ��6q   ��    Columns 55      0  *System.Windows.Controls.DataGridTextColumn  56      ,  &System.Windows.Controls.DataGridColumn   Header$ Расписание��6B      Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 6V   -   5        scheduleGrid��1  +System.Windows.Controls.DataGridBoundColumn   Binding 56   %   �� *
schedule+6b     57      $ Секция��6A   $	 130 6Q   -   5        sectioneGrid�� 57   %   �� *	section+6]     58      $  Преподаватель��6A   $	 520 6X   -   5        trainerGrid�� 58   %   �� *	trainer+6d   5:      5;      5<      
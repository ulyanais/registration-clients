   M S B A M L   `   `   `  ����O  Kregistration clients, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:registration_clientsregistration_clients  5      &     registration_clients.Hello_User_   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      4local"clr-namespace:registration_clients     5        N� Title$  Hello_User_��5	       � 	Resources 5
         schedule_trainingViewSource  usersViewSource��%:   &	        &	      �� 5   
   6   �� 5   
   6   5      .��5      � -   5         �Name$ 
Hello_user��5      
�������.+�5   
   �  � DataContext# [  6    � RowDefinitions 5      �� 5      $��* �6    �� 5      $
��Auto �6    .+�5      &   System.Windows.Controls.DataGrid  -   5          Name$ ClientsShedule��5   z      AutoGenerateColumns .  ��63   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ Расписание��6F   	   Width5  /System.Windows.Controls.DataGridLengthConverter$		 150 6Z   -   5        scheduleGrid��1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 5   )   �� *
schedule+6f     5      $ Секция��6E   $		 130 6U   -   5        sectioneGrid��
 5   )   �� *	section+6a     5      $  Преподаватель��6E   $		 520 6\   -   5        trainerGrid��
 5   )   �� *	trainer+6h   5      �� 5      $��Center=�6   $��1��67    �� Orientation$ 
Horizontal=�6D   .+�5      �� -   5         ��Name$ outputButton��5      $%��Вывод расписания��6/   6J   5      � 5      -   5        $ grid1��5      # [ 6"   $
��Left=�6Q   $��606,158,0,0q�6l   $	��Top=�6�    � ColumnDefinitions 5       �� 5!      $
��Auto �6'   �� 5"      $
��Auto �6'    5$      �� 5%      $
��Auto �6$   �� 5&      $
��Auto �6$   �� 5'      $
��Auto �6$   �� 5(      $
��Auto �6$   5*      5+      5,      5-      
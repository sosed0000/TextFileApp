   M S B A M L   `   `   `  ����F  BTextFileApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:TextFileAppTextFileApp  5   	       TextFileApp.MainWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:TextFileApp     5   	     � Title$  Text File App��5   	   $	��350��6   $	��500��6,   .��5	      � $��10q�6    � RowDefinitions 5
   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   �� $��0��6   $��Write text here:��6   �� 5   
   -   5         ��Name$ TextBox_Write��5      $��1��6)    �� AcceptsReturn$
 True��66   " �� VerticalScrollBarVisibility$
 Auto=�6K   �� 5   
   $��2��6   $-��'Reading text (updates every 5 seconds):��6   �� 5   
   -   5        $ TextBox_Read��5      $��3��6(    �� 
IsReadOnly$
 True��65   $
 Auto=�6G   �� 5   
   -   5         ��Name$ WriteToFile��5      $��4��6&   $��Write to File��63   $��0,10,0,0q�6K   $��30��6]   6i   5      5      
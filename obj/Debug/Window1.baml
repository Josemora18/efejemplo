   M S B A M L   `   `   `  ����
  demoEF    demoEF.Window1   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	     � Title$  Window1��5   	   $��292.537��6   $��838.806��6*   .��5      � -   5        $��
-3,0,-7,-2q�5       J� RenderTransformOrigin$ 0.5,0.5&�6    � ColumnDefinitions 5   
   �� 5      �� 5      $��0* �6   z�5
   
   V� 5      .~�5      �� �� 5      �� 5       �� Angle$ -0.161Q�6"   T� 5      5       � RowDefinitions 5   
   �� 5      $	��31* �6   �� 5      $	��57* �6   .+�5   
   �� $��Nombre��6   $
��Left=�6!   $��
146,57,0,0q�6<   $	��Top=�6P   $��26��6h   $��54��6t   �� 5   
   $��Sueldo��6   $
��Left=�6!   $��
154,10,0,0q�6<   $	��Top=�6P   $��26��6h   $��46��6t   $ -1.129,2.148&�6   $��1��6�   �� 5   
   -   5        $��Enviar��5      $
��Left=�6"   $��201,109,0,0q�6=   $	��Top=�6R   $��75��6j   $��1��6�   $��20��6�   �� 5   
   -   5         ��Name$ txSueldo��5      $
��Left=�6$   $��23��6?   $��
232,10,0,0q�6K    �� TextWrapping$
 Wrap=�6_   $	��Top=�6s   $	��120��6�   $��1��6�   �� 5   
   -   5        $ txNombre��5      $
��Left=�6$   $��23��6?   $��
232,60,0,0q�6K   $
 Wrap=�6_   $	��Top=�6s   $	��120��6�   �� 5   
   -   5        $��Borrar��5      $
��Left=�6"   $��362,109,0,0q�6=   $	��Top=�6R   $��75��6j   $��1��6u   $��20��6�   �� 5   
   -   5        $��
Actualizar��5      $
��Left=�6&   $��
27,109,0,0q�6A   $	��Top=�6U   $��75��6m   $ 
0.03,0.845&�6x   $��1��6�   $��20��6�   �� 5   
   -   5        $ txtid��5      $
��Left=�6!   $��23��6<   $��
232,10,0,0q�6H   $
 Wrap=�6\   $	��Top=�6p   $	��120��6�   $ -0.189,0.377&�6�   �� 5   
   $��Id��6   $
��Left=�6   $��
162,10,0,0q�68   $	��Top=�6L   $��26��6d   $��20��6p   �� 5   
   -   5        $��Consultar por Id��5      $
��Left=�6,   $��
410,16,0,0q�6G   $	��Top=�6[   $	��160��6s   $��20��6�   �� 5    
   $��Consultar Todo��6   $
��Left=�6*   $��	652,3,0,0q�6E   $	��Top=�6X   $��75��6p   $��0��6{   $��1��6�   �� 5!   
   -	   5        $��Consultar Todo��5!      $
��Left=�6*   $��
410,0,0,31q�6E   $��Bottom=�6Y   $	��160��6t   $��20��6�   &   System.Windows.Controls.DataGrid  5"   
   -
   5          Name$ dbgrid��5"      $
��Left=�6#   $��
508,52,0,0q�6>   $	��Top=�6R   $��77��6j   $	��273��6v   $��1��6�   �� 5#   
   $��Nombre de Departamento: ��6   $
��Left=�63   $��	62,52,0,0q�6N   $��1��6a   $	��Top=�6n   $��26��6�   $	��156��6�   �� 5$   
   -   5        $��Agregar Departamento��5$      $
��Left=�60   $��
410,10,0,0q�6K   $��1��6_   $	��Top=�6l   $	��160��6�   $��20��6�   �� 5%   
   -   5        $ txtDep��5%      $
��Left=�6"   $��23��6=   $��
232,56,0,0q�6I   $
 Wrap=�6]   $	��Top=�6q   $	��120��6�   $��1��6�   �� 5&   
   -   5         ��Name$ CbDepartamentos��5&      $
��Left=�6,   $��
686,36,0,0q�6G   $	��Top=�6[   $	��120��6s   6   5(      5)      
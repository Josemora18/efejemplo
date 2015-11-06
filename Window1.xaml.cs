
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
using System.Windows.Shapes;
using miBD;
using System.Text.RegularExpressions;

namespace demoEF
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class Window1 : Window
    {
        public Window1()
        {
            InitializeComponent();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            //instanciar bd
            if (Regex.IsMatch(txNombre.Text, @"^[a-zA-Z]+$") && Regex.IsMatch(txSueldo.Text, @"^\d+$"))
            {
                
                    miBD.demoEF db = new miBD.demoEF();
                    Empleado emp = new Empleado();
                    emp.Nombre = txNombre.Text;
                    emp.Sueldo = int.Parse(txSueldo.Text);

                    db.Empleado.Add(emp);
                    db.SaveChanges();
            }
            else { MessageBox.Show("Solo Letras en #nombre y numeros en #sueldo "); }
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            //Actualizar
            if (Regex.IsMatch(txNombre.Text, @"^[a-zA-Z]+$") && Regex.IsMatch(txSueldo.Text, @"^\d+$") && Regex.IsMatch(txtid.Text, @"^\d+$"))
            {
                miBD.demoEF db = new miBD.demoEF();
                int id = int.Parse(txtid.Text);
                var emp = /*from x in*/ db.Empleado.SingleOrDefault(x => x.id == id);
                /*  where x.id == id
                  select x;*/
                if (emp != null)
                {
                    emp.Nombre = txNombre.Text;
                    emp.Sueldo = int.Parse(txSueldo.Text);
                    db.SaveChanges();
                }
            }
            else { MessageBox.Show("Solo Letras en (#nombre) y numeros en (#sueldo y #id "); }

        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            //borrar
            if (Regex.IsMatch(txtid.Text, @"^\d+$"))
            {
                miBD.demoEF db = new miBD.demoEF();
                int id = int.Parse(txtid.Text);
                var emp = /*from x in*/ db.Empleado.SingleOrDefault(x => x.id == id);
                /*  where x.id == id
                  select x;*/
                if (emp != null)
                {
                    db.Empleado.Remove(emp);
                    db.SaveChanges();

                }

            }
            else { MessageBox.Show("Solo Numeros  #id"); }
        }

        private void Button_Click_4(object sender, RoutedEventArgs e)
        {
            //actualizar por id
            if (Regex.IsMatch(txtid.Text, @"^\d+$"))
            {
                miBD.demoEF db = new miBD.demoEF();
                int id = int.Parse(txtid.Text);
                var registros = from s in db.Empleado
                                where s.id == id
                                select new
                                {
                                    s.Nombre,
                                    s.Sueldo
                                };
                dbgrid.ItemsSource = registros.ToList();
            }
            else { MessageBox.Show("Solo Numeros  #id"); }
        }

        private void Button_Click_5(object sender, RoutedEventArgs e)
        {
            //consultar Todo
            if (Regex.IsMatch(txtid.Text, @"^\d+$"))
            {
                miBD.demoEF db = new miBD.demoEF();
                var registros = from s in db.Empleado
                                select s;
                dbgrid.ItemsSource = registros.ToList();

            }
            else { MessageBox.Show("Solo Numeros  #id"); }
        }

        private void Button_Click_6(object sender, RoutedEventArgs e)
        {
             if (Regex.IsMatch(txtDep.Text, @"^[a-zA-Z]+$"))
            {
                
                    miBD.demoEF db = new miBD.demoEF();
                    Departamento  dep = new Departamento ();
                    dep.nombre = txtDep.Text;
                   
                    db.Departamentos.Add(dep );
                    db.SaveChanges();
            }
            else { MessageBox.Show("Solo Letras en #nombre de departamento"); }
        }
        }
    }




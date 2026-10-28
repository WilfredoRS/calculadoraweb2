using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace calculadoraweb2
{
    public partial class inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                float num1 = 0;
                float num2 = 0;
                double resultado = 0;

                if (!string.IsNullOrEmpty(tnum1.Text))
                {
                    num1 = float.Parse(tnum1.Text);
                }
                else
                {
                    lresultado.Text = "Ingrese el Número 1";
                    return;
                }
                switch (doperacion.SelectedIndex)
                {
                    case 0: 
                        num2 = float.Parse(tnum2.Text);
                        resultado = num1 + num2;
                        break;

                    case 1: 
                        num2 = float.Parse(tnum2.Text);
                        resultado = num1 - num2;
                        break;

                    case 2: 
                        num2 = float.Parse(tnum2.Text);
                        resultado = num1 * num2;
                        break;

                    case 3: 
                        num2 = float.Parse(tnum2.Text);
                        if (num2 != 0)
                        {
                            resultado = num1 / num2;
                        }
                        else
                        {
                            lresultado.Text = "Error: División entre cero";
                            return;
                        }
                        break;

                    case 4: 
                        resultado = Math.Pow(num1, 2);
                        break;

                    case 5: 
                        resultado = Math.Exp(num1);
                        break;

                    case 6: 
                        resultado = Math.Pow(10, num1);
                        break;

                    default:
                        lresultado.Text = "Seleccione una operación válida";
                        return;
                }

                
                lresultado.Text = resultado.ToString();
            }
            catch (Exception ex)
            {
                lresultado.Text = "Error: Verifique los datos ingresados.";
            }
        }
    }
}
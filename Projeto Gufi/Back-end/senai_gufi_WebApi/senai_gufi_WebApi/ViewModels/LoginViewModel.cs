using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace senai_gufi_WebApi.ViewModels
{

    /// <summary>
    /// Classe responsavel pelo modelo de login
    /// </summary>
    public class LoginViewModel
    {
        [Required(ErrorMessage = "Informe o email do Usuário!")]
        public string Email { get; set; }
        [Required(ErrorMessage ="informe a senha do Usuário!")]
        public string Senha { get; set; }
    }
}

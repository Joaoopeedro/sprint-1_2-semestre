using senai_gufi_WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_gufi_WebApi.Interfaces
{
    interface IUsuarioRepository
    {
        /// <summary>
        /// 
        /// </summary>
        /// <param name="email"></param>
        /// <param name="senha"></param>
        /// <returns></returns>
        Usuario Login(string email, string senha);
    }
}

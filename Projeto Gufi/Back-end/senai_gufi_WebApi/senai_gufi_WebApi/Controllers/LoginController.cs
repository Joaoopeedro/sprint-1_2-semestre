using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using senai_gufi_WebApi.Domains;
using senai_gufi_WebApi.Interfaces;
using senai_gufi_WebApi.Repositories;
using senai_gufi_WebApi.ViewModels;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;

namespace senai_gufi_WebApi.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class LoginController : ControllerBase
    {

        private IUsuarioRepository _usuarioRepository { get; set; }

        public LoginController()
        {
            _usuarioRepository = new UsuarioRepository();
        }

        /// <summary>
        /// Valida o usuario
        /// </summary>
        /// <param name="login"> Objeto login com email e a senha do usuário</param>
        /// <returns> Um Status code 200 - ok com o token do suaurio autenticado</returns>

        [HttpPost]
        public IActionResult Login (LoginViewModel login)
        {
            try
            {
                //Usuario usuarioBuscado = _usuarioRepository.Login(login.X, login.Y);
                Usuario usuarioBuscado = _usuarioRepository.Login(login.Email, login.Senha);
                if (usuarioBuscado == null)
                {
                    return NotFound("Email ou senha invalidos!");
                }

                var minhasClains = new[]
                {
                    new Claim(JwtRegisteredClaimNames.Email, usuarioBuscado.Email),
                    new Claim(JwtRegisteredClaimNames.Jti, usuarioBuscado.IdUsuario.ToString()),
                    new Claim(ClaimTypes.Role, usuarioBuscado.IdTipoUsuario.ToString())
                };

                var Key = new SymmetricSecurityKey(System.Text.Encoding.UTF8.GetBytes("gufi-chave-autenticação"));

                var Creds = new SigningCredentials(Key, SecurityAlgorithms.HmacSha256);

                var Token = new JwtSecurityToken(issuer: "gufi.webApi", audience: "gufi.webApi", claims: minhasClains, expires: DateTime.Now.AddMinutes(30), signingCredentials: Creds);

                return Ok(new
                {
                    token = new JwtSecurityTokenHandler().WriteToken(Token)
                }) ;
            }
            catch (Exception ex)
            {

                return BadRequest(ex);
            }
        }
    }
}

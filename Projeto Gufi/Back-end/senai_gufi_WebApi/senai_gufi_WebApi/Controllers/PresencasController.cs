using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using senai_gufi_WebApi.Domains;
using senai_gufi_WebApi.Interfaces;
using senai_gufi_WebApi.Repositories;
using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Threading.Tasks;

namespace senai_gufi_WebApi.Controllers
{
    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]
    public class PresencasController : ControllerBase
    {

        private IPresencaRepository _presencaRepository { get; set; }

        public PresencasController()
        {
            _presencaRepository = new PresencaRepository();
        }


        [Authorize (Roles = "2")]
        [HttpGet("minhas")]
        public IActionResult ListarMinhas()
        {
            try
            {

                int idUsuario = Convert.ToInt32(HttpContext.User.Claims.First(C => C.Type == JwtRegisteredClaimNames.Jti).Value);
                return Ok(_presencaRepository.ListarMinhas(idUsuario));
            }
            catch (Exception erro)
            {

                return BadRequest(new
                {
                    mensagem = "Nao é possivel se inscrever em um evento se o ususario nao estivet logado",
                    erro
                });
            }
        }

        [Authorize (Roles= "2")]
        [HttpPost("incricao/{idEvento}")]
        public IActionResult Inscrever(int idEvento)
        {
            try
            {
                Presenca novaPresenca = new()
                {
                    IdUsuario = Convert.ToInt32(HttpContext.User.Claims.First(c => c.Type == JwtRegisteredClaimNames.Jti).Value),
                    IdEvento = idEvento,
                    IdSituacao = 3

                };

                _presencaRepository.Inscrever(novaPresenca);
                return StatusCode(201);
            }
            catch (Exception erro)
            {

                return BadRequest(new
                {
                    mensagem = "Nao é possivel se inscrever em um evento se o ususario nao estivet logado",
                    erro
                });
            }
        }

        [Authorize (Roles = "1")]
        [HttpPatch("aprovar/{idPresenca}")]
        public IActionResult AprovarRecusar (int idPresenca,Presenca status)
        {
            try
            {
                _presencaRepository.AprovarRecusar(idPresenca, status.IdSituacao.ToString());
                return StatusCode(204);
            }
            catch (Exception erro)
            {

                return BadRequest(erro);
            }
        }
    }
}

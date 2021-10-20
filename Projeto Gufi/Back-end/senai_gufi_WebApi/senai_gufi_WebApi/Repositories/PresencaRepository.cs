using Microsoft.EntityFrameworkCore;
using senai_gufi_WebApi.Context;
using senai_gufi_WebApi.Domains;
using senai_gufi_WebApi.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_gufi_WebApi.Repositories
{

    /// <summary>
    /// Repositorio Responsavel pelas presencas
    /// </summary>
    public class PresencaRepository : IPresencaRepository
    {
        GufiContext ctx = new();
        public void AprovarRecusar(int idPresenca, string status)
        {
            Presenca presencaBuscada = ctx.Presencas
                .FirstOrDefault(p => p.IdPresenca == idPresenca);

            switch (status)
            {
                case "1":
                    presencaBuscada.IdSituacao = 1;
                    break;
                case "2":
                    presencaBuscada.IdSituacao = 2;
                    break;
                case "3":
                    presencaBuscada.IdSituacao = 3;
                    break;
                default:
                    presencaBuscada.IdSituacao = presencaBuscada.IdSituacao;
                    break;
            }

            ctx.Presencas.Update(presencaBuscada);

            ctx.SaveChanges();
        }

        public void Inscrever(Presenca incricao)
        {
            ctx.Presencas.Add(incricao);

            ctx.SaveChanges();
        }

        public List<Presenca> ListarMinhas(int idUsuario)
        {
            return ctx.Presencas
                .Include(p => p.IdEventoNavigation).ThenInclude(e => e.IdTipoEventoNavigation)
                .Where(p => p.IdUsuario == idUsuario).ToList();
        }
    }
}

using senai_gufi_WebApi.Domains;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace senai_gufi_WebApi.Interfaces
{
    /// <summary>
    /// Interface responsavel pelo PresencaRepository
    /// </summary>
    interface IPresencaRepository
    {
        /// <summary>
        /// Lista todos os eventos aue um determinado usuario participa
        /// </summary>
        /// <param name="IdUsuario"> ID do usuario que participa dos Eventos listados</param>
        /// <returns> Uma lista de presencas de dados de eventos</returns>
        List<Presenca> ListarMinhas(int idUsuario);

        /// <summary>
        /// Cria uma nova presenca
        /// </summary>
        /// <param name="incricao"> Objeto com as informaçoes de inscricao</param>
        void Inscrever(Presenca incricao);

        /// <summary>
        /// Altera o status de uma presenca 
        /// </summary>
        /// <param name="idPresenca"> Id da presenca que tera a situacao alterada</param>
        /// <param name="status">Paremetro que atualizar a situacao da presenca para 1 - Aprovada, 2-Recusada,3-Aguardando</param>
        void AprovarRecusar(int idPresenca, string status);
    }
}

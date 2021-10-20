import { Component } from "react";


class TiposEventos extends Component {
    constructor(props) {
        super(props);
        this.state = {
        listaTipoEventos: [ {idTipoEvento : 1, titulo : 'C#'}, {idTipoEvento : 2, titulo: 'SQL'}, {idTipoEvento: 3, titulo: 'reactJs'}],
            titulo: ''
        };
    };

    componentDidMount() {
        //
    }

    render() {
        return (
            //JSX
            <div>
                <main>
                    {/* Lista de Tipos de eventos */}
                    <section>
                        <h2>Lista de Tipos de Eventos</h2>
                        <table>
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Titulo</th>
                                
                                </tr>
                            </thead>

                            <tbody>
                                {
                                    this.state.listaTipoEventos.map((tipoEventos) => {
                                        return (
                                            <tr key={tipoEventos.idTipoEvento}>
                                                <td>{tipoEventos.idTipoEvento}</td>
                                                <td>{tipoEventos.titulo}</td>
                                            </tr>
                                        )
                                    } )
                                }

                            </tbody>
                        </table>
                    </section>
                    {/* Cadastro de Tipos de Eventos */}
                </main>

            </div>

        )
    }
};

export default TiposEventos
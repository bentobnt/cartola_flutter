class PlayerScaled {
  String? posicao;
  String? posicaoAbreviacao;
  String? clube;
  String? clubeNome;
  String? escudoClube;
  Atleta? atleta;
  int? clubeId;
  int? escalacoes;

  PlayerScaled(
      {this.posicao,
      this.posicaoAbreviacao,
      this.clube,
      this.clubeNome,
      this.escudoClube,
      this.atleta,
      this.clubeId,
      this.escalacoes});

  PlayerScaled.fromJson(Map<String, dynamic> json) {
    posicao = json['posicao'];
    posicaoAbreviacao = json['posicao_abreviacao'];
    clube = json['clube'];
    clubeNome = json['clube_nome'];
    escudoClube = json['escudo_clube'];
    atleta =
        json['Atleta'] != null ? new Atleta.fromJson(json['Atleta']) : null;
    clubeId = json['clube_id'];
    escalacoes = json['escalacoes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['posicao'] = this.posicao;
    data['posicao_abreviacao'] = this.posicaoAbreviacao;
    data['clube'] = this.clube;
    data['clube_nome'] = this.clubeNome;
    data['escudo_clube'] = this.escudoClube;
    if (this.atleta != null) {
      data['Atleta'] = this.atleta!.toJson();
    }
    data['clube_id'] = this.clubeId;
    data['escalacoes'] = this.escalacoes;
    return data;
  }
}

class Atleta {
  String? nome;
  String? apelido;
  String? apelidoAbreviado;
  String? foto;
  int? atletaId;
  int? precoEditorial;

  Atleta(
      {this.nome,
      this.apelido,
      this.apelidoAbreviado,
      this.foto,
      this.atletaId,
      this.precoEditorial});

  Atleta.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    apelido = json['apelido'];
    apelidoAbreviado = json['apelido_abreviado'];
    foto = json['foto'];
    atletaId = json['atleta_id'];
    precoEditorial = json['preco_editorial'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['apelido'] = this.apelido;
    data['apelido_abreviado'] = this.apelidoAbreviado;
    data['foto'] = this.foto;
    data['atleta_id'] = this.atletaId;
    data['preco_editorial'] = this.precoEditorial;
    return data;
  }
}

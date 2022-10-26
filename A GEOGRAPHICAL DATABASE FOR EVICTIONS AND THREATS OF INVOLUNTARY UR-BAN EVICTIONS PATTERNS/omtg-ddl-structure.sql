-- Create table Distritos
CREATE TABLE Distritos (
  NM_DISTRIT TEXT,
  CD_GEOCDS INTEGER NOT NULL,
  MUNICIPIO TEXT,
  geom ast_planarsubdivision,
  CONSTRAINT pk_Distritos PRIMARY KEY (CD_GEOCDS)
);

-- Create the spatial index on geom column of Distritos
CREATE INDEX SIDX_Distritos
  ON Distritos
  USING GIST (geom);

-- Create table Trilhos
CREATE TABLE Trilhos (
  ID INTEGER NOT NULL,
  OPERACAO TEXT NOT NULL,
  NM_NUM INTEGER NOT NULL,
  NM_COR TEXT NOT NULL,
  SITUACAO TEXT NOT NULL,
  geom ast_biline,
  CONSTRAINT pk_Trilhos PRIMARY KEY (ID)
);

-- Create the spatial index on geom column of Trilhos
CREATE INDEX SIDX_Trilhos
  ON Trilhos
  USING GIST (geom);

-- Create table Hidrografia
CREATE TABLE Hidrografia (
  ID INTEGER NOT NULL,
  NOM_TIPO TEXT,
  NOME TEXT,
  geom ast_line,
  CONSTRAINT pk_Hidrografia PRIMARY KEY (ID)
);

-- Create the spatial index on geom column of Hidrografia
CREATE INDEX SIDX_Hidrografia
  ON Hidrografia
  USING GIST (geom);

-- Create table MassaDAgua
CREATE TABLE MassaDAgua (
  ID INTEGER NOT NULL,
  NOM_TIPO TEXT,
  NOME TEXT,
  RIO TEXT,
  geom ast_polygon,
  CONSTRAINT pk_MassaDAgua PRIMARY KEY (ID)
);

-- Create the spatial index on geom column of MassaDAgua
CREATE INDEX SIDX_MassaDAgua
  ON MassaDAgua
  USING GIST (geom);

-- Create table Denuncias
CREATE TABLE Denuncias (
  ID INTEGER,
  Identifica INTEGER,
  Data_inser DATE,
  Data_remoc DATE,
  Situacao INTEGER,
  Descricao INTEGER,
  Fonte INTEGER,
  Justificat INTEGER,
  Procedimen INTEGER,
  Tipologia INTEGER,
  Familias_a INTEGER,
  Familias_r INTEGER,
  Movimento INTEGER,
  Endereco INTEGER,
  geom ast_point,
  CONSTRAINT pk_Denuncias PRIMARY KEY (ID)
);

-- Create the spatial index on geom column of Denuncias
CREATE INDEX SIDX_Denuncias
  ON Denuncias
  USING GIST (geom);

-- Create table LancamentoImobiliarios
CREATE TABLE LancamentoImobiliarios (
  ID INTEGER NOT NULL,
  TIPO_EMP TEXT,
  ANO_LAN INTEGER,
  ANDARES INTEGER,
  AR_UT_UNID REAL,
  PC_TT_UN INTEGER,
  PC_M2_AU REAL,
  geom ast_point,
  CONSTRAINT pk_LancamentoImobiliarios PRIMARY KEY (ID)
);

-- Create the spatial index on geom column of LancamentoImobiliarios
CREATE INDEX SIDX_LancamentoImobiliarios
  ON LancamentoImobiliarios
  USING GIST (geom);

-- Create table Vias
CREATE TABLE Vias (
  ID INTEGER NOT NULL,
  MUN TEXT,
  SIG_ROD TEXT,
  NOME TEXT,
  TIPO_E_A TEXT,
  geom ast_biline,
  CONSTRAINT pk_Vias PRIMARY KEY (ID)
);

-- Create the spatial index on geom column of Vias
CREATE INDEX SIDX_Vias
  ON Vias
  USING GIST (geom);

-- Create table ParquesUC
CREATE TABLE ParquesUC (
  ID INTEGER NOT NULL,
  INSTANC TEXT,
  NOM_TIPO TEXT,
  NOME TEXT,
  geom ast_polygon,
  CONSTRAINT pk_ParquesUC PRIMARY KEY (ID)
);

-- Create the spatial index on geom column of ParquesUC
CREATE INDEX SIDX_ParquesUC
  ON ParquesUC
  USING GIST (geom);

-- Create table Declividade
CREATE TABLE Declividade (
  Class INTEGER NOT NULL,
  geom ast_tesselation
);

-- Create table Municipios
CREATE TABLE Municipios (
  NOME_MUN TEXT NOT NULL,
  geom ast_planarsubdivision,
  CONSTRAINT pk_Municipios PRIMARY KEY (NOME_MUN)
);

-- Create the spatial index on geom column of Municipios
CREATE INDEX SIDX_Municipios
  ON Municipios
  USING GIST (geom);


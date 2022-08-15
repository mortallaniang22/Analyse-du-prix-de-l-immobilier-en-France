
CREATE TABLE Commune (
                IdCom INTEGER NOT NULL,
                Commune VARCHAR(45) NOT NULL,
                CodPost INTEGER NOT NULL,
                CONSTRAINT Commune_pk PRIMARY KEY (IdCom)
);


CREATE UNIQUE INDEX Commune_idx
 ON Commune
 ( Commune ASC, CodPost );

CREATE TABLE Local (
                IdLoc INTEGER NOT NULL,
                TypLoc VARCHAR(20) NOT NULL,
                NbPieces INTEGER NOT NULL,
                Valfonc DECIMAL(10,2) NOT NULL,
                SurfLoc DECIMAL(7,2) NOT NULL,
                SurfTer DECIMAL(7,2),
                SurfCarrez DECIMAL(7,2),
                NumVoie INTEGER NOT NULL,
                NomVoie VARCHAR(45) NOT NULL,
                IdCom INTEGER NOT NULL,
                CONSTRAINT Local_pk PRIMARY KEY (IdLoc)
);
COMMENT ON COLUMN Local.Valfonc IS 'Valeur foncière';


CREATE INDEX Local_idx
 ON Local
 ( NumVoie, NomVoie );

CREATE TABLE Transaction (
                IdTransac INTEGER NOT NULL,
                NatTransac VARCHAR(20) NOT NULL,
                DatTransac DATE NOT NULL,
                IdLoc INTEGER NOT NULL,
                CONSTRAINT Transaction_pk PRIMARY KEY (IdTransac)
);


ALTER TABLE Local ADD CONSTRAINT Commune_Local_fk
FOREIGN KEY (IdCom)
REFERENCES Commune (IdCom)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE Transaction ADD CONSTRAINT Local_Transaction_fk
FOREIGN KEY (IdLoc)
REFERENCES Local (IdLoc)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;




CREATE TABLE Lawyer
(
  Lid VARCHAR(9) NOT NULL,
  Name VARCHAR(20) NOT NULL,
  Seniority INT NOT NULL,
  Cost INT NOT NULL,
  Cell_number VARCHAR(10) NOT NULL,
  PRIMARY KEY (Lid)
);

CREATE TABLE Area
(
  Aid INT NOT NULL,
  PRIMARY KEY (Aid)
);

CREATE TABLE Claims
(
  Cid INT NOT NULL,
  Claim_Status VARCHAR(15) NOT NULL,
  Lid VARCHAR(9) NOT NULL,
  PRIMARY KEY (Cid),
  FOREIGN KEY (Lid) REFERENCES Lawyer(Lid)
);

CREATE TABLE Building_permit
(
  Bid INT NOT NULL,
  permit_Status VARCHAR(15) NOT NULL,
  Lid VARCHAR(9) NOT NULL,
  Aid INT NOT NULL,
  PRIMARY KEY (Bid),
  FOREIGN KEY (Lid) REFERENCES Lawyer(Lid),
  FOREIGN KEY (Aid) REFERENCES Area(Aid)
);  		  

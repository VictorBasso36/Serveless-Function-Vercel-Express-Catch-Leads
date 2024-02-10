-- CreateTable
CREATE TABLE "lead" (
    "id" SERIAL NOT NULL,
    "nome" TEXT,
    "email" TEXT,
    "telefone" TEXT,
    "genero" TEXT,
    "tempoDeProfissao" TEXT,
    "idade" TEXT,
    "marcasMaisUsadas" TEXT,
    "produtoMaisUsado" TEXT,
    "sugestaoClient" TEXT,
    "avaliacao" TEXT,
    "comoConheceu" TEXT,
    "eventoData" TEXT,
    "hora" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "lead_pkey" PRIMARY KEY ("id")
);

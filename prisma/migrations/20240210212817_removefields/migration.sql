/*
  Warnings:

  - You are about to drop the column `eventoData` on the `lead` table. All the data in the column will be lost.
  - You are about to drop the column `hora` on the `lead` table. All the data in the column will be lost.

*/
-- AlterTable
ALTER TABLE "lead" DROP COLUMN "eventoData",
DROP COLUMN "hora";

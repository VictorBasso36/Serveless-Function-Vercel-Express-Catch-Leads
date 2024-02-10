import express from 'express';
import { Prisma, PrismaClient } from '@prisma/client'
const prisma = new PrismaClient()
import MessageResponse from '../interfaces/MessageResponse';
import emojis from './emojis';

const router = express.Router();

router.get<{}, MessageResponse>('/', (req, res) => {
  res.json({
    message: 'API - JMV LEADS',
  });
});

router.post<{}, any>('/add', async (req, res) => {
  const leadData = req.body;
  try {
    const newLead = await prisma.lead.create({
      data: leadData,
    });
    res.json(newLead);
  } catch (error) {
    res.status(500).json({ error: 'An error occurred while creating the lead.' });
  }
});

router.get<{}, any>('/leads', async (req, res) => {
  const { senha } = req.query;
  
  if (senha === process.env.PASS_LEADS) {
    try {
      const leads = await prisma.lead.findMany();
      res.json(leads);
    } catch (error) {
      res.status(500).json({ error: 'Ocorreu um erro ao recuperar os leads.' });
    }
  } else {
    res.status(401).json({ error: 'Senha incorreta.' });
  }
});



router.use('/emojis', emojis);

export default router;

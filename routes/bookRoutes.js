const express = require('express');
const router = express.Router();
const { Book } = require('../models');

// GET all books
router.get('/', async (req, res) => {
  const books = await Book.findAll();
  res.json(books);
});

// POST a new book
router.post('/', async (req, res) => {
  const book = await Book.create(req.body);
  res.json(book);
});

// GET a book by ID
router.get('/:id', async (req, res) => {
  const book = await Book.findByPk(req.params.id);
  res.json(book);
});

// PUT update a book
router.put('/:id', async (req, res) => {
  const book = await Book.update(req.body, {
    where: { id: req.params.id },
  });
  res.json(book);
});

// DELETE a book
router.delete('/:id', async (req, res) => {
  await Book.destroy({ where: { id: req.params.id } });
  res.json({ message: 'Book deleted' });
});

module.exports = router;

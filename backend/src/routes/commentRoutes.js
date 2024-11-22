// src/routes/commentRoutes.js
import express from 'express';
import authMiddleware from '../middlewares/authMiddleware.js';
import { addComment, getCommentsByRecipe, updateComment, deleteComment } from '../controllers/commentController.js';
import { isAdmin, isAdminOrSelf } from '../middlewares/roleMiddleware.js';

const router = express.Router();

/**
 * @swagger
 * /comments:
 *   post:
 *     summary: "Ajouter un commentaire (admin ou utilisateur lui-même)"
 *     description: "Permet à un utilisateur d'ajouter un commentaire sur une recette."
 *     tags: [Commentaires]
 *     security:
 *       - Bearer: []
 *     requestBody:
 *       description: "Commentaire à ajouter"
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               recipeId:
 *                 type: string
 *               content:
 *                 type: string
 *     responses:
 *       201:
 *         description: "Commentaire ajouté avec succès"
 *       400:
 *         description: "Données invalides"
 *       401:
 *         description: "Non autorisé"
 *       500:
 *       description: "Erreur serveur"
 */
router.post('/:recipeId', authMiddleware, isAdminOrSelf, addComment); 

/**
 * @swagger
 * /comments/{recipeId}:
 *   get:
 *     summary: "Récupérer les commentaires d'une recette (admin seulement)"
 *     description: "Permet de récupérer tous les commentaires d'une recette spécifique."
 *     tags: [Commentaires]
 *     parameters:
 *       - name: recipeId
 *         in: path
 *         description: "ID de la recette"
 *         required: true
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: "Liste des commentaires"
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 type: object
 *                 properties:
 *                   userId:
 *                     type: string
 *                   content:
 *                     type: string
 *       404:
 *         description: "Recette non trouvée"
 *       500:
 *         description: "Erreur serveur"
 */
router.get('/:recipeId', authMiddleware, isAdmin, getCommentsByRecipe);  

/**
 * @swagger
 * /comments/{commentId}:
 *   put:
 *     summary: "Mettre à jour un commentaire (admin seulement)"
 *     description: "Permet de mettre à jour un commentaire existant."
 *     tags: [Commentaires]
 *     parameters:
 *       - name: commentId
 *         in: path
 *         description: "ID du commentaire"
 *         required: true
 *         schema:
 *           type: string
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             type: object
 *             properties:
 *               content:
 *                 type: string
 *     responses:
 *       200:
 *         description: "Commentaire mis à jour avec succès"
 *       400:
 *         description: "Données invalides"
 *       404:
 *         description: "Commentaire non trouvé"
 *       401:
 *         description: "Non autorisé"
 *       500:
 *         description: "Erreur serveur"
 */
router.put('/:commentId', authMiddleware, isAdmin, updateComment);  

/**
 * @swagger
 * /comments/{commentId}:
 *   delete:
 *     summary: "Supprimer un commentaire (admin seulement)"
 *     description: "Permet de supprimer un commentaire existant."
 *     tags: [Commentaires]
 *     security:
 *       - Bearer: []
 *     parameters:
 *       - name: commentId
 *         in: path
 *         description: "ID du commentaire"
 *         required: true
 *         schema:
 *           type: string
 *     responses:
 *       200:
 *         description: "Commentaire supprimé avec succès"
 *       404:
 *         description: "Commentaire non trouvé"
 *       401:
 *         description: "Non autorisé"
 *       500:
 *         description: "Erreur serveur"
 */
router.delete('/:commentId', authMiddleware, isAdmin, deleteComment); 

export default router;

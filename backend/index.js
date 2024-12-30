import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import recipeRoutes from "./src/routes/recipeRoutes.js";
import authRoutes from "./src/routes/authRoutes.js";
import userRoutes from "./src/routes/userRoutes.js";
import roleRoutes from "./src/routes/roleRoutes.js";
import categoryRoutes from "./src/routes/categoryRoutes.js";
import commentRoutes from "./src/routes/commentRoutes.js";
import scoreRoutes from "./src/routes/scoreRoutes.js";
import statusRoutes from "./src/routes/statusRoutes.js";
import setupSwagger from "./swagger.js";
import { connectDB } from "./src/config/db.js"; // Connexion à MongoDB à partir de db.js

dotenv.config();

const app = express();
const PORT = process.env.PORT || 5000;

// Connexion à MongoDB
connectDB();

// Configurer Swagger
setupSwagger(app);

// Middleware CORS
app.use(
  cors({
    origin: "http://localhost:3000", // URL de votre frontend
    credentials: true, // Autoriser les credentials
    methods: ["GET", "POST", "PUT", "DELETE", "OPTIONS"],
    allowedHeaders: [
      "Content-Type",
      "Authorization",
      "Access-Control-Allow-Credentials",
    ],
  })
);

// Middleware pour parser les données JSON et URL-encoded
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Utilisation des routes avec le préfixe correspondant
app.use("/api/auth", authRoutes);
app.use("/api/recipes", recipeRoutes);
app.use("/api/users", userRoutes);
app.use("/api/roles", roleRoutes);
app.use("/api/categories", categoryRoutes);
app.use("/api/comments", commentRoutes);
app.use("/api/scores", scoreRoutes);
app.use("/api/users/:id/status", statusRoutes);

// Route de test
app.get("/api", (req, res) => {
  res.send("Hello, you are in the world of recipes!");
});

// Ne pas démarrer le serveur ici (important pour les tests)
if (process.env.NODE_ENV !== "test") {
  app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
  });
}

export default app; // Exporter l'application pour les tests

import mongoose from 'mongoose';

// Définition du schéma pour le statut
const statusSchema = new mongoose.Schema({
    status_name: {
        type: String,
        required: true,
        trim: true,
        unique: true,
    }
}, {
    timestamps: true
});

const Status = mongoose.model('Status', statusSchema);
export default Status;

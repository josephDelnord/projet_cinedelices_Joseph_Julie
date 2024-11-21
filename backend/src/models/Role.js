import mongoose from 'mongoose';

const roleSchema = new mongoose.Schema({
  role_name: {
    type: String,
    required: true,
    unique: true,
    trim: true,
    index: { unique: true }

  }
}, { timestamps: true });

// Ajouter un index unique explicite
roleSchema.index({ role_name: 1 }, { unique: true });

const Role = mongoose.model('Role', roleSchema);
export default Role;

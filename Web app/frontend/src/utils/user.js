// utils/user.js
import mongoose from 'mongoose';
import User from '../models/User'; // Update the path based on your project structure

export async function findUserByEmail(email) {
  try {
    await mongoose.connect('YOUR_MONGODB_URI', { useNewUrlParser: true, useUnifiedTopology: true });
    const user = await User.findOne({ email });
    return user;
  } catch (error) {
    console.error('Error finding user by email:', error);
    throw error;
  } finally {
    mongoose.disconnect();
  }
}

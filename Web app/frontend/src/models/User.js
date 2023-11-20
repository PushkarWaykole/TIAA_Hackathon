import mongoose from "mongoose";

const { Schema } = mongoose;

const userSchema = new Schema(
  {
    name: {
      type: String,
      unique: true,
      required: true,
    },
    email: {
      type: String,
      unique: true,
      required: true,
    },
    age:{
      type:Number,      
      required:false,
    },
    gender:{
      type:String,
      
      required:false,
    },
    income:{
      type:Number,
      required:false,
    },
    password: {
      type: String,
      required: false,
    },
    
  },
  { timestamps: true }
);

export default mongoose?.models?.User || mongoose.model("User", userSchema);

const express = require("express");
const mongoose = require("mongoose");
const authRouter = require("./routers/auth")
const cors = require("cors");

const PORT = process.env.PORT || 3000;
const app = express();


app.use(cors());

// Middleware to parse all requests to json
app.use(express.json());
app.use(authRouter);

const DB = "mongodb+srv://devshubham652:sL67hHfL7Cy3p4Sm@cluster0.wobdmdj.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

mongoose.connect(DB)
         .then(()=>{
            console.log("Connection successful");
         })
         .catch((err)=>{
            console.log(err);
         })

app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port ${PORT}`);
})
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

const DB = "YOUR-MONGODB-LINK";

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

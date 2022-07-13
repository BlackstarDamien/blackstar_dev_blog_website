const path = require("path")

module.exports = {
    mode: "development",
    entry: "./src/index.js",
    devServer: {
        static: "./public/",
        port: 3000
    },
    output: {
        filename: "main.js",
        path: path.resolve(__dirname, 'public/dist'),
    },
    resolve: {
        extensions: [".js", ".jsx"]
    },
    module: {
        rules: [
            {
                test: /\.(js|jsx)$/,
                use: ["babel-loader"]
            }
        ]
    },
}
const path = require('path');

module.exports = {
  mode: 'development',
  devtool: '',
  entry: './src/<%= filename %>.ts',
  output: {
    filename: '<%= filename %>.js',
    path: path.resolve(__dirname, 'dist'),
    library: '_octantPlugin',
    libraryTarget: 'var',
    libraryExport: 'default',
  },
module: {
  rules: [
  {
     test: /\.(js|jsx|tsx|ts)$/,
     loader: 'babel-loader',
      options: {
    presets: [
            ["@babel/preset-env", {
                forceAllTransforms: true
            }],
            "@babel/preset-typescript"
    ],
    plugins: [
        "@babel/proposal-class-properties",
        "@babel/proposal-object-rest-spread",
        "@babel/plugin-transform-object-set-prototype-of-to-assign"
    ]

    }
  }]
},
resolve: {
  extensions: ['*', '.js', '.jsx', '.tsx', '.ts'],
},
};

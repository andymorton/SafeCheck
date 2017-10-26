#FE for SafeCheck

The front-end is using react, webpack and babel to compile the UI.

##Prerequisites
- [Node](https://nodejs.org/en/)

##Build
- Run `nom run build` to compile assets

##Server
-Run `npm start` to serve the app

To build add a file called `data.js` to the view directory. Including:
```
module.exports = {
  testUrl: 'enpoint.url',
  postUrl: 'post-endpoint.url'
};
```

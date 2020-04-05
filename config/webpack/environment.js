const { environment } = require('@rails/webpacker')
const sass = require('./loaders/sass');
const erb = require('./loaders/erb');

environment.loaders.append('erb', erb);
environment.loaders.append('sass', sass);

module.exports = environment

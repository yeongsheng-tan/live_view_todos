// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import css from '../css/app.css';

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import dependencies
//
import 'phoenix_html';

import 'mdn-polyfills/CustomEvent';
import 'mdn-polyfills/String.prototype.startsWith';
import 'mdn-polyfills/Array.from';
import 'mdn-polyfills/NodeList.prototype.forEach';
import 'mdn-polyfills/Element.prototype.closest';
import 'mdn-polyfills/Element.prototype.matches';
import "mdn-polyfills/Node.prototype.remove";
import 'child-replace-with-polyfill';
import 'url-search-params-polyfill';
import 'formdata-polyfill';
import 'classlist-polyfill';
import "@webcomponents/template";
import "shim-keyboard-event-key";

import {Socket} from 'phoenix';
import LiveSocket from 'phoenix_live_view';

import NProgress from "nprogress";

let csrfToken = document.querySelector("meta[name='csrf-token']").getAttribute("content");
let liveSocket = new LiveSocket('/live', Socket, {params: {_csrf_token: csrfToken}});
liveSocket.connect();
window.liveSocket = liveSocket;

// Show progress bar on live navigation and form submits
window.addEventListener("phx:page-loading-start", info => NProgress.start())
window.addEventListener("phx:page-loading-stop", info => NProgress.done())

// Import local files
//
// Local files can be imported directly using relative paths, for example:
// import socket from "./socket"

import React from "react";
import ReactDOM from "react-dom";
import "bootstrap/dist/css/bootstrap.min.css";
import "./styles/style.css";
import App from "./App";
import { createStore, combineReducers } from "redux";
import { Provider } from "react-redux";

// external reducers
import postsReducer from "./redux/reducers/posts";

// redux store
const store = createStore(combineReducers({ posts: postsReducer }));

ReactDOM.render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById("root")
);

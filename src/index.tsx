import { BrowserRouter } from "react-router-dom";
import ReactDOM from "react-dom";
import { I18nextProvider } from "react-i18next";
import "antd/dist/antd.css";

import Router from "./router";
import i18n from "./translation";

// Declare 'App' JSX Element
// 'App' contains:
// 1. BrowserRouter from the ReactRouter package, which stores the current location in the browser's address bar using clean URLs and navigates using the browser's built-in history stack.
// 2. I18nextProvider, which takes an i18next instance via prop i18n and passes that down using the context API. 
// - i18next is an internationalisation framework for JS. 
// - The Context API helps share data between components which you can’t easily share with props, i.e., sending data like userid, auth, theme, internationalisation data through the component tree without sending any props manually at every level. 
// 3. Router, which is a manually declared JSX element.
 

const App = () => (
  <BrowserRouter>
    <I18nextProvider i18n={i18n}>
      <Router />
    </I18nextProvider>
  </BrowserRouter>
);

// Display JSX element 'App' inside 'root' element
// JSX allows combining HTML with JS expressions
ReactDOM.render(<App />, document.getElementById("root"));

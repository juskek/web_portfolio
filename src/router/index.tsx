import { lazy, Suspense } from "react";
import { Switch, Route } from "react-router-dom";
import Footer from "../components/Footer";
import Header from "../components/Header";
import routes from "./config";
import { Styles } from "../styles/styles";

// Declare 'Router' JSX element
// 'Router' contains:
// 1. Suspense, which is a React component which waits for its components to load before they can render. While loading, fallback can be used to render a placeholder element
// In this case, Styles, Header, Switch and Footer are loaded before everything is rendered  
// 2. Styles, which is a GlobalStyleComponent from the styled-components package.
// 3. Header and Footer are JSX Elements for content
// 4. Switch, which is a react-router component that renders the first child <Route> or <Redirect> that matches the location.
// - A Route is generated from each item in routes, so when creating a new page, create 
const Router = () => {
  return (
    <Suspense fallback={null}>
      <Styles />
      <Header />
      <Switch>
        {routes.map((routeItem) => {
          return (
            <Route
              key={routeItem.component}
              path={routeItem.path}
              exact={routeItem.exact}
              component={lazy(() => import(`../pages/${routeItem.component}`))}
            />
          );
        })}
      </Switch>
      <Footer />
    </Suspense>
  );
};

export default Router;

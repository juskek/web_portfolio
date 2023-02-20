import { lazy } from "react";
import IntroContent from "../../content/Home/IntroContent.json";
import ProjectOneContent from "../../content/Home/ProjectOneContent.json";
import MissionContent from "../../content/MissionContent.json";
import ProductContent from "../../content/ProductContent.json";
import ContactContent from "../../content/ContactContent.json";

const Contact = lazy(() => import("../../components/ContactForm"));
const Container = lazy(() => import("../../common/Container"));
const ScrollToTop = lazy(() => import("../../common/ScrollToTop"));
const ContentBlock = lazy(() => import("../../components/ContentBlock"));

const Home = () => {
  return (
    <Container>
      <ScrollToTop />
      <ContentBlock
        type="right"
        title={IntroContent.title}
        content={IntroContent.text}
        button={IntroContent.button}
        graphic="developer.svg"
        graphicWidth="100%"
        graphicHeight="100%"
        id="intro"
      />
      {/* <MiddleBlock
        title={MiddleBlockContent.title}
        content={MiddleBlockContent.text}
        button={MiddleBlockContent.button}
      /> */}
      <ContentBlock
        type="left"
        title={ProjectOneContent.title}
        content={ProjectOneContent.text}
        section={ProjectOneContent.section}
        graphic={ProjectOneContent.graphic}
        graphicWidth={ProjectOneContent.graphicWidth}
        graphicHeight={ProjectOneContent.graphicHeight}
        id="about"
      />
      <ContentBlock
        type="right"
        title={MissionContent.title}
        content={MissionContent.text}
        graphic="product-launch.svg"
        graphicWidth="100%"
        graphicHeight="100%"
        id="mission"
      />
      <ContentBlock
        type="left"
        title={ProductContent.title}
        content={ProductContent.text}
        graphic="waving.svg"
        graphicWidth="100%"
        graphicHeight="100%"
        id="product"
      />
      <Contact
        title={ContactContent.title}
        content={ContactContent.text}
        id="contact"
      />
    </Container>
  );
};

export default Home;

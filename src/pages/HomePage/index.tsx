import { lazy } from "react";
import IntroContent from "../../content/Home/IntroContent.json";
import ProjectOneContent from "../../content/Home/ProjectOneContent.json";
import ProjectTwoContent from "../../content/Home/ProjectTwoContent.json";
import ProjectThreeContent from "../../content/Home/ProjectThreeContent.json";
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
        graphicSrc="developer.svg"
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
        graphicSrc={ProjectOneContent.graphicSrc}
        graphicWidth={ProjectOneContent.graphicWidth}
        graphicHeight={ProjectOneContent.graphicHeight}
        id={ProjectOneContent.title}
        button={ProjectOneContent.button}
      />
      <ContentBlock
        type="right"
        title={ProjectTwoContent.title}
        content={ProjectTwoContent.text}
        graphicSrc={ProjectTwoContent.graphicSrc}
        graphicWidth={ProjectTwoContent.graphicWidth}
        graphicHeight={ProjectTwoContent.graphicHeight}
        id={ProjectTwoContent.title}
        button={ProjectTwoContent.button}
      />
      <ContentBlock
        type="left"
        title={ProjectThreeContent.title}
        content={ProjectThreeContent.text}
        graphicSrc={ProjectThreeContent.graphicSrc}
        graphicWidth={ProjectThreeContent.graphicWidth}
        graphicHeight={ProjectThreeContent.graphicHeight}
        id={ProjectThreeContent.title}
        button={ProjectThreeContent.button}
      />
      {/* <ContentBlock
        type="right"
        title={MissionContent.title}
        content={MissionContent.text}
        graphicSrc="product-launch.svg"
        graphicWidth="100%"
        graphicHeight="100%"
        id="mission"
      />
      <ContentBlock
        type="left"
        title={ProductContent.title}
        content={ProductContent.text}
        graphicSrc="waving.svg"
        graphicWidth="100%"
        graphicHeight="100%"
        id="product"
      />
      <Contact
        title={ContactContent.title}
        content={ContactContent.text}
        id="contact"
      /> */}
    </Container>
  );
};

export default Home;

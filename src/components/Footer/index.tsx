import { Row, Col } from "antd";
import { withTranslation } from "react-i18next";
import { GraphicAtom } from "../../common/GraphicAtom";
import Container from "../../common/Container";
import ProjectOneContent from "../../content/Home/ProjectOneContent.json";

import i18n from "i18next";
import {
  FooterSection,
  Title,
  NavLink,
  Extra,
  LogoContainer,
  Para,
  Large,
  Chat,
  Empty,
  FooterContainer,
  Language,
  Label,
  LanguageSwitch,
  LanguageSwitchContainer,
} from "./styles";

interface SocialLinkProps {
  href: string;
  src: string;
}

const Footer = ({ t }: any) => {
  const handleChange = (language: string) => {
    i18n.changeLanguage(language);
  };

  const SocialLink = ({ href, src }: SocialLinkProps) => {
    return (
      <a
        href={href}
        target="_blank"
        rel="noopener noreferrer"
        key={src}
        aria-label={src}
      >
        <GraphicAtom src={src} width="25px" height="25px" />
      </a>
    );
  };

  return (
    <>
      <FooterSection>
        <Container>
          <Row justify="space-between">
            <Col lg={10} md={10} sm={12} xs={12}>
              <Language>{t("Tech")}</Language>
              <Large to={{ pathname: "https://youtube.com/shorts/iS_kTXIUcFI?feature=share" }} target="_blank">
                {t("Embedded C Robot")}
              </Large>
              <Large to={{ pathname: "https://opensea.io/assets/matic/0x2953399124f0cbb46d2cbacd8a89cf0599974963/31890240459949454299619204764924511709184426269098390716351490949695055855617" }} target="_blank">
                {t("Line Racers NFT")}
              </Large>
              <Large to={{ pathname: "https://github.com/Kek-Tech/flutter_google_maps_widget_cluster_markers" }} target="_blank">
                {t("Flutter Google Maps Widget Cluster Markers")}
              </Large>
              <Large to={{ pathname: "https://www.linkedin.com/feed/update/urn:li:activity:6980512375879696385/" }} target="_blank">
                {t("Energy Superhub Oxford Data Pipeline")}
              </Large>
            </Col>
            <Col lg={10} md={10} sm={12} xs={12}>
              <Language>{t("Mechanical Engineering")}</Language>
              <Large to={{ pathname: "https://www.linkedin.com/embed/feed/update/urn:li:ugcPost:6738060771831386112" }} target="_blank">
                {t("Self Sanitising Button")}
              </Large>
              <Language>{t("Articles")}</Language>
              <Large to={{ pathname: "https://justinkek.medium.com/alphabets-waymo-a-technical-study-on-autonomous-vehicle-tech-c128180ab2c5" }} target="_blank">
                {"Waymo: A Technical Study on Autonomous Vehicle Tech"}
              </Large>
            </Col>
          </Row>
          {/* <Row justify="space-between">
            <Col lg={10} md={10} sm={12} xs={12}>
              <Empty />
              <Language>{t("Address")}</Language>
              <Para>Rancho Santa Margarita</Para>
              <Para>2131 Elk Street</Para>
              <Para>California</Para>
            </Col>
            <Col lg={8} md={8} sm={12} xs={12}>
              <Title>{t("Company")}</Title>
              <Large left="true" to="/">
                {t("About")}
              </Large>
              <Large left="true" to="/">
                {t("Blog")}
              </Large>
              <Large left="true" to="/">
                {t("Press")}
              </Large>
              <Large left="true" to="/">
                {t("Careers & Culture")}
              </Large>
            </Col>
            <Col lg={6} md={6} sm={12} xs={12}>
              <Label htmlFor="select-lang">{t("Language")}</Label>
              <LanguageSwitchContainer>
                <LanguageSwitch onClick={() => handleChange("en")}>
                  <GraphicAtom
                    src="united-states.svg"
                    aria-label="homepage"
                    width="30px"
                    height="30px"
                  />
                </LanguageSwitch>
                <LanguageSwitch onClick={() => handleChange("es")}>
                  <GraphicAtom
                    src="spain.svg"
                    aria-label="homepage"
                    width="30px"
                    height="30px"
                  />
                </LanguageSwitch>
              </LanguageSwitchContainer>
            </Col>
          </Row> */}
        </Container>
      </FooterSection>
      <Extra>
        <Container border={true}>
          <Row
            justify="space-between"
            align="middle"
            style={{ paddingTop: "3rem" }}
          >
            <NavLink to="/">
              <LogoContainer>
                <GraphicAtom
                  src="logo.svg"
                  aria-label="homepage"
                  width="101px"
                  height="64px"
                />
              </LogoContainer>
            </NavLink>
            <FooterContainer>
              <SocialLink
                href="https://github.com/juskek"
                src="github.svg"
              />
              {/* <SocialLink
                href="https://twitter.com/Adrinlolx"
                src="twitter.svg"
              /> */}
              <SocialLink
                href="https://www.linkedin.com/in/justinkek/"
                src="linkedin.svg"
              />
              <SocialLink
                href="https://justinkek.medium.com/"
                src="medium.svg"
              />
              <a href="https://www.buymeacoffee.com/justinkek">
                <img
                  src="https://img.buymeacoffee.com/button-api/?text= Buy me KFC &emoji=🍗&slug=justinkek&button_colour=FF5F5F&font_colour=ffffff&font_family=Lato&outline_colour=000000&coffee_colour=FFDD00"
                  alt="Buy me KFC"
                />
              </a>
            </FooterContainer>
          </Row>
        </Container>
      </Extra>
    </>
  );
};

export default withTranslation()(Footer);

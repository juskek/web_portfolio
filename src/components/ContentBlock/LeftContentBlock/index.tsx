import { Row, Col } from "antd";
import { withTranslation } from "react-i18next";
import { GraphicAtom } from "../../../common/GraphicAtom";
import { Button } from "../../../common/Button";
import { ContentBlockProps } from "../types";
import { Fade } from "react-awesome-reveal";
import {
  LeftContentSection,
  Content,
  ContentWrapper,
  ServiceWrapper,
  MinTitle,
  MinPara,
  ButtonWrapper,
} from "./styles";

const LeftContentBlock = ({
  graphicSrc,
  graphicWidth,
  graphicHeight,
  title,
  content,
  section,
  t,
  id,
  button,
}: ContentBlockProps) => {
  const scrollTo = (id: string) => {
    const element = document.getElementById(id) as HTMLDivElement;
    element.scrollIntoView({
      behavior: "smooth",
    });
  };
  const onClickSwitch = (onClickMode: string, onClickDestination: string) => {
    switch(onClickMode) {
      case 'navigateTo':
        window.open(onClickDestination);
        break;
      case 'scrollTo':
        scrollTo(onClickDestination);
        break;
      default:
        break;
    }
  }

  return (
    <LeftContentSection>
      <Fade direction="left">
        <Row justify="space-between" align="middle" id={id}>
          <Col lg={11} md={11} sm={12} xs={24}>
            <GraphicAtom src={graphicSrc} width={graphicWidth} height={graphicHeight}/>
          </Col>
          <Col lg={11} md={11} sm={11} xs={24}>
            <ContentWrapper>
              <h6>{t(title)}</h6>
              <Content>{t(content)}</Content>
              <ServiceWrapper>
                <Row justify="space-between">
                  {typeof section === "object" &&
                    section.map((item: any, id: number) => {
                      return (
                        <Col key={id} span={11}>
                          <GraphicAtom src={item.graphicSrc} width={item.graphicWidth} height={item.graphicHeight} onClickSrc={item.graphicOnClickSrc}/>
                          <MinTitle>{t(item.title)}</MinTitle>
                          <MinPara>{t(item.content)}</MinPara>
                        </Col>
                      );
                    })}
                </Row>
              </ServiceWrapper>
              <ButtonWrapper>
                {typeof button === "object" &&
                  button.map((item: any, id: number) => {
                    return (
                      <Button
                        key={id}
                        color={item.color}
                        fixedWidth={true}
                        onClick={() => onClickSwitch(item.onClickMode, item.onClickDestination)}
                      >
                        {t(item.title)}
                      </Button>
                    );
                  })}
              </ButtonWrapper>
            </ContentWrapper>
          </Col>
        </Row>
      </Fade>
    </LeftContentSection>
  );
};

export default withTranslation()(LeftContentBlock);

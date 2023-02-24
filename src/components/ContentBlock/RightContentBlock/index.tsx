import { Row, Col } from "antd";
import { withTranslation } from "react-i18next";
import { GraphicAtom } from "../../../common/GraphicAtom";
import { Button } from "../../../common/Button";
import { ContentBlockProps } from "../types";
import { Fade } from "react-awesome-reveal";
import {
  RightBlockContainer,
  Content,
  ContentWrapper,
  ButtonWrapper,
} from "./styles";

const RightBlock = ({
  title,
  content,
  button,
  graphicSrc,
  graphicWidth,
  graphicHeight,
  t,
  id,
}: ContentBlockProps) => {
  const scrollTo = (id: string) => {
    const element = document.getElementById(id) as HTMLDivElement;
    element.scrollIntoView({
      behavior: "smooth",
    });
  };
  const onClickSwitch = (onClickMode: string, onClickDestination: string) => {
    switch (onClickMode) {
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
    <RightBlockContainer>
      <Fade direction="right">
        <Row justify="space-between" align="middle" id={id}>
          <Col lg={{ span: 11, order: 1 }} md={{ span: 11, order: 1 }} sm={{ span: 11, order: 1 }} xs={{ span: 24, order: 2 }}>
            <ContentWrapper>
              <h6>{t(title)}</h6>
              <Content>{t(content)}</Content>
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
          <Col lg={{ span: 11, order: 2 }} md={{ span: 11, order: 2 }} sm={{ span: 12, order: 2 }} xs={{ span: 24, order: 1 }}>
            <GraphicAtom src={graphicSrc} width={graphicWidth} height={graphicHeight} />
          </Col>
        </Row>
      </Fade>
    </RightBlockContainer>
  );
};

export default withTranslation()(RightBlock);

import { Row, Col } from "antd";
import { withTranslation } from "react-i18next";
import { Graphic } from "../../../common/Graphic";
import { ContentBlockProps } from "../types";
import { Fade } from "react-awesome-reveal";
import {
  LeftContentSection,
  Content,
  ContentWrapper,
  ServiceWrapper,
  MinTitle,
  MinPara,
} from "./styles";

const LeftContentBlock = ({
  graphic,
  graphicWidth,
  graphicHeight,
  title,
  content,
  section,
  t,
  id,
}: ContentBlockProps) => {

  return (
    <LeftContentSection>
      <Fade direction="left">
        <Row justify="space-between" align="middle" id={id}>
          <Col lg={11} md={11} sm={12} xs={24}>
            <Graphic src={graphic} width={graphicWidth} height={graphicHeight}/>
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
                          <Graphic src={item.icon} width={graphicWidth} height={graphicHeight}/>
                          <MinTitle>{t(item.title)}</MinTitle>
                          <MinPara>{t(item.content)}</MinPara>
                        </Col>
                      );
                    })}
                </Row>
              </ServiceWrapper>
            </ContentWrapper>
          </Col>
        </Row>
      </Fade>
    </LeftContentSection>
  );
};

export default withTranslation()(LeftContentBlock);

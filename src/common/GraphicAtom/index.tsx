import { GraphicProps } from "../types";

export const GraphicAtom = ({ src, width, height, onClickSrc }: GraphicProps): JSX.Element => {
  const openSrc = (src?: string) => {
    if (src != null) {
      window.open(src);
    }
  }
  if (src.includes('https://')) {
    // Network Image
    return (
      <img src={`${src}`} alt={src} width={width} height={height} onClick={() => openSrc(onClickSrc)} />
    );
  } else {
    // Asset
    if (src.includes('.svg')) {
      return (
        <img src={`/img/svg/${src}`} alt={src} width={width} height={height} onClick={() => openSrc(onClickSrc)} />
      );
    } else if (src.includes('.png')) {
      return (
        <img src={`/img/png/${src}`} alt={src} width={width} height={height} onClick={() => openSrc(onClickSrc)} />
      );
    }

    // Error 
    return (
      <img src={`/img/error`} alt={src} width={width} height={height} />
    );

  }
}

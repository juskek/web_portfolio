import { GraphicProps } from "../types";

export const GraphicAtom = ({ src, width, height }: GraphicProps) : JSX.Element => {
  if (src.includes('https://')) {
    // Network Image
    return (
      <img src={`${src}`} alt={src} width={width} height={height} />
    );
  } else {
    // Asset
    if (src.includes('.svg')) {
      return (
        <img src={`/img/svg/${src}`} alt={src} width={width} height={height} />
      );
    } else if (src.includes('.png')) {
      return (
        <img src={`/img/png/${src}`} alt={src} width={width} height={height} />
      );
    }

    // Error 
    return (
      <img src={`/img/error`} alt={src} width={width} height={height} />
    );

  }
}

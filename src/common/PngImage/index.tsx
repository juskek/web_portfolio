import { PngImageProps } from "../types";

export const PngImage = ({ src, width, height }: PngImageProps) => (
  <img src={`/img/png/${src}`} alt={src} width={width} height={height} />
);

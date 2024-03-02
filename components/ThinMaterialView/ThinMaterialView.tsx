import React, {FC, PropsWithChildren, ReactNode} from 'react';
import {
  HostComponent,
  requireNativeComponent,
  View,
  ViewProps,
} from 'react-native';

type Material = 'ultrathin' | 'thin' | 'thick' | 'ultrathick' | 'regular';
type NativeButtonProps = {
  style: ViewProps['style'];
  children: ReactNode;
  material: Material;
  enabled: boolean;
};

const ThinMaterialViewNative: HostComponent<NativeButtonProps> =
  requireNativeComponent('ThinMaterialView');

type Props = {
  style: ViewProps['style'];
  material: Material;
  enabled: boolean;
};

export const ThinMaterialView: FC<PropsWithChildren<Props>> = ({
  children,
  style,
  material,
  enabled,
}) => {
  if (!enabled) {
    return <View style={style}>{children}</View>;
  }
  return (
    <ThinMaterialViewNative enabled={enabled} material={material} style={style}>
      {children}
    </ThinMaterialViewNative>
  );
};

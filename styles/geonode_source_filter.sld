<?xml version="1.0" encoding="ISO-8859-1"?>
<StyledLayerDescriptor version="1.0.0" 
    xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" 
    xmlns="http://www.opengis.net/sld" 
    xmlns:ogc="http://www.opengis.net/ogc" 
    xmlns:xlink="http://www.w3.org/1999/xlink" 
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
    <!-- a named layer is the basic building block of an sld document -->

  <NamedLayer>
    <Name>Default Polygon</Name>
    <UserStyle>
      <Title>A boring default style</Title>
      <FeatureTypeStyle>
        <Rule>
          <Name>area</Name>
          <Title>Area</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>input_id</ogc:PropertyName>
                <ogc:Function name="env">
                  <ogc:Literal>input_id</ogc:Literal>
                </ogc:Function>​​​​
              </ogc:PropertyIsEqualTo>​​​​
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>si_type</ogc:PropertyName>
                <ogc:Literal>area</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>​
          </ogc:Filter>
          <PolygonSymbolizer>
            <Geometry><ogc:PropertyName>area</ogc:PropertyName></Geometry>
            <Fill>
              <CssParameter name="fill">#EE9900</CssParameter>
            </Fill>
          </PolygonSymbolizer>
        </Rule>
        <Rule>
          <Name>point</Name>
          <Title>Point</Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>input_id</ogc:PropertyName>
                <ogc:Function name="env">
                  <ogc:Literal>input_id</ogc:Literal>
                </ogc:Function>​​​​
              </ogc:PropertyIsEqualTo>​​​​
              <ogc:PropertyIsEqualTo>
                <ogc:PropertyName>si_type</ogc:PropertyName>
                <ogc:Literal>point</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>​
          </ogc:Filter>
          <PointSymbolizer>
            <Geometry><ogc:PropertyName>point</ogc:PropertyName></Geometry>
            <Graphic>
              <Mark>
                <WellKnownName>square</WellKnownName>
                <Fill>
                  <CssParameter name="fill">#EE9900</CssParameter>
                </Fill>
              </Mark>
              <Size>8</Size>
            </Graphic>
          </PointSymbolizer>
        </Rule>
        </FeatureTypeStyle>
    </UserStyle>
  </NamedLayer>
</StyledLayerDescriptor>
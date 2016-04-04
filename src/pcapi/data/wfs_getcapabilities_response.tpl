<?xml version="1.0" encoding="UTF-8"?>
<wfs:WFS_Capabilities xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.opengis.net/wfs" xmlns:wfs="http://www.opengis.net/wfs" xmlns:ows="http://www.opengis.net/ows" xmlns:gml="http://www.opengis.net/gml" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:cobweb="cobweb" version="1.1.0" xsi:schemaLocation="http://www.opengis.net/wfs http://schemas.opengis.net/wfs/1.1.0/wfs.xsd">
  <ows:ServiceIdentification>
    <ows:Title/>
    <ows:Abstract/>
    <ows:ServiceType>WFS</ows:ServiceType>
    <ows:ServiceTypeVersion>1.1.0</ows:ServiceTypeVersion>
    <ows:Fees/>
    <ows:AccessConstraints/>
  </ows:ServiceIdentification>
  <ows:ServiceProvider>
    <ows:ProviderName/>
    <ows:ServiceContact>
      <ows:IndividualName/>
      <ows:PositionName/>
      <ows:ContactInfo>
        <ows:Phone>
          <ows:Voice/>
          <ows:Facsimile/>
        </ows:Phone>
        <ows:Address>
          <ows:City/>
          <ows:AdministrativeArea/>
          <ows:PostalCode/>
          <ows:Country/>
        </ows:Address>
      </ows:ContactInfo>
    </ows:ServiceContact>
  </ows:ServiceProvider>
  <ows:OperationsMetadata>
    <ows:Operation name="GetCapabilities">
      <ows:DCP>
        <ows:HTTP>
          <ows:Get xlink:href="{{OWS_ENDPOINT}}"/>
          <ows:Post xlink:href="{{OWS_ENDPOINT}}"/>
        </ows:HTTP>
      </ows:DCP>
      <ows:Parameter name="AcceptVersions">
        <ows:Value>1.0.0</ows:Value>
        <ows:Value>1.1.0</ows:Value>
      </ows:Parameter>
      <ows:Parameter name="AcceptFormats">
        <ows:Value>text/xml</ows:Value>
      </ows:Parameter>
    </ows:Operation>
    <ows:Operation name="DescribeFeatureType">
      <ows:DCP>
        <ows:HTTP>
          <ows:Get xlink:href="{{OWS_ENDPOINT}}"/>
          <ows:Post xlink:href="{{OWS_ENDPOINT}}"/>
        </ows:HTTP>
      </ows:DCP>
      <ows:Parameter name="outputFormat">
        <ows:Value>text/xml; subtype=gml/3.1.1</ows:Value>
      </ows:Parameter>
    </ows:Operation>
    <ows:Operation name="GetFeature">
      <ows:DCP>
        <ows:HTTP>
          <ows:Get xlink:href="{{OWS_ENDPOINT}}"/>
          <ows:Post xlink:href="{{OWS_ENDPOINT}}"/>
        </ows:HTTP>
      </ows:DCP>
      <ows:Parameter name="resultType">
        <ows:Value>results</ows:Value>
        <ows:Value>hits</ows:Value>
      </ows:Parameter>
      <ows:Parameter name="outputFormat">
        <ows:Value>text/xml; subtype=gml/3.1.1</ows:Value>
<!--
        <ows:Value>GML2</ows:Value>
        <ows:Value>application/gml+xml; version=3.2</ows:Value>
        <ows:Value>application/json</ows:Value>
        <ows:Value>application/vnd.google-earth.kml xml</ows:Value>
        <ows:Value>application/vnd.google-earth.kml+xml</ows:Value>
        <ows:Value>gml3</ows:Value>
        <ows:Value>gml32</ows:Value>
        <ows:Value>json</ows:Value>
        <ows:Value>text/xml; subtype=gml/2.1.2</ows:Value>
        <ows:Value>text/xml; subtype=gml/3.2</ows:Value>
-->
      </ows:Parameter>
      <ows:Constraint name="LocalTraverseXLinkScope">
        <ows:Value>2</ows:Value>
      </ows:Constraint>
    </ows:Operation>
    <ows:Operation name="GetGmlObject">
      <ows:DCP>
        <ows:HTTP>
          <ows:Get xlink:href="{{OWS_ENDPOINT}}"/>
          <ows:Post xlink:href="{{OWS_ENDPOINT}}"/>
        </ows:HTTP>
      </ows:DCP>
    </ows:Operation>
  </ows:OperationsMetadata>
  <FeatureTypeList>
    <Operations>
      <Operation>Query</Operation>
    </Operations>
    %for SID in WFS_FEATURES:
    <FeatureType xmlns:cobweb="cobweb">
      <Name>{{WFS_FEATURES[SID]["name"]}}</Name>
      <Title>{{WFS_FEATURES[SID]["title"]}}</Title>
      <Abstract/>
      <ows:Keywords>
        <ows:Keyword>COBWEB SID</ows:Keyword>
        <ows:Keyword>{{SID}}</ows:Keyword>
      </ows:Keywords>
      <DefaultSRS>urn:x-ogc:def:crs:EPSG:4326</DefaultSRS>
      <ows:WGS84BoundingBox>
        <ows:LowerCorner>11.74 49.44</ows:LowerCorner>
        <ows:UpperCorner>13.80 53.46</ows:UpperCorner>
      </ows:WGS84BoundingBox>
    </FeatureType>
    %end
  </FeatureTypeList>
  <ogc:Filter_Capabilities>
    <ogc:Spatial_Capabilities>
      <ogc:GeometryOperands>
        <ogc:GeometryOperand>gml:Envelope</ogc:GeometryOperand>
        <ogc:GeometryOperand>gml:Point</ogc:GeometryOperand>
        <ogc:GeometryOperand>gml:LineString</ogc:GeometryOperand>
        <ogc:GeometryOperand>gml:Polygon</ogc:GeometryOperand>
      </ogc:GeometryOperands>
      <ogc:SpatialOperators>
        <ogc:SpatialOperator name="Disjoint"/>
        <ogc:SpatialOperator name="Equals"/>
        <ogc:SpatialOperator name="DWithin"/>
        <ogc:SpatialOperator name="Beyond"/>
        <ogc:SpatialOperator name="Intersects"/>
        <ogc:SpatialOperator name="Touches"/>
        <ogc:SpatialOperator name="Crosses"/>
        <ogc:SpatialOperator name="Within"/>
        <ogc:SpatialOperator name="Contains"/>
        <ogc:SpatialOperator name="Overlaps"/>
        <ogc:SpatialOperator name="BBOX"/>
      </ogc:SpatialOperators>
    </ogc:Spatial_Capabilities>
    <ogc:Scalar_Capabilities>
      <ogc:LogicalOperators/>
      <ogc:ComparisonOperators>
        <ogc:ComparisonOperator>LessThan</ogc:ComparisonOperator>
        <ogc:ComparisonOperator>GreaterThan</ogc:ComparisonOperator>
        <ogc:ComparisonOperator>LessThanEqualTo</ogc:ComparisonOperator>
        <ogc:ComparisonOperator>GreaterThanEqualTo</ogc:ComparisonOperator>
        <ogc:ComparisonOperator>EqualTo</ogc:ComparisonOperator>
        <ogc:ComparisonOperator>NotEqualTo</ogc:ComparisonOperator>
        <ogc:ComparisonOperator>Like</ogc:ComparisonOperator>
        <ogc:ComparisonOperator>Between</ogc:ComparisonOperator>
        <ogc:ComparisonOperator>NullCheck</ogc:ComparisonOperator>
      </ogc:ComparisonOperators>
      <ogc:ArithmeticOperators>
        <ogc:SimpleArithmetic/>
        <ogc:Functions>
          <ogc:FunctionNames>
            <ogc:FunctionName nArgs="1">abs</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">abs_2</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">abs_3</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">abs_4</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">acos</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">AddCoverages</ogc:FunctionName>
            <ogc:FunctionName nArgs="4">Aggregate</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Area</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">area2</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">AreaGrid</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">asin</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">atan</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">atan2</ogc:FunctionName>
            <ogc:FunctionName nArgs="14">BarnesSurface</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">between</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">boundary</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">boundaryDimension</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Bounds</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">buffer</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">BufferFeatureCollection</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">bufferWithSegments</ogc:FunctionName>
            <ogc:FunctionName nArgs="7">Categorize</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">ceil</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Centroid</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">classify</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">Clip</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">CollectGeometries</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Collection_Average</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Collection_Bounds</ogc:FunctionName>
            <ogc:FunctionName nArgs="0">Collection_Count</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Collection_Max</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Collection_Median</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Collection_Min</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Collection_Sum</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Collection_Unique</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Concatenate</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">contains</ogc:FunctionName>
            <ogc:FunctionName nArgs="7">Contour</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">convert</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">convexHull</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">cos</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">Count</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">CropCoverage</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">crosses</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">dateFormat</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">dateParse</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">difference</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">dimension</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">disjoint</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">disjoint3D</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">distance</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">distance3D</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">double2bool</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">endAngle</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">endPoint</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">env</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">envelope</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">EqualInterval</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">equalsExact</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">equalsExactTolerance</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">equalTo</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">exp</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">exteriorRing</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">Feature</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">floor</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">geometryType</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">geomFromWKT</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">geomLength</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">getGeometryN</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">getX</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">getY</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">getz</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">greaterEqualThan</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">greaterThan</ogc:FunctionName>
            <ogc:FunctionName nArgs="5">Grid</ogc:FunctionName>
            <ogc:FunctionName nArgs="7">Heatmap</ogc:FunctionName>
            <ogc:FunctionName nArgs="0">id</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">IEEEremainder</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">if_then_else</ogc:FunctionName>
            <ogc:FunctionName nArgs="11">in10</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">in2</ogc:FunctionName>
            <ogc:FunctionName nArgs="4">in3</ogc:FunctionName>
            <ogc:FunctionName nArgs="5">in4</ogc:FunctionName>
            <ogc:FunctionName nArgs="6">in5</ogc:FunctionName>
            <ogc:FunctionName nArgs="7">in6</ogc:FunctionName>
            <ogc:FunctionName nArgs="8">in7</ogc:FunctionName>
            <ogc:FunctionName nArgs="9">in8</ogc:FunctionName>
            <ogc:FunctionName nArgs="10">in9</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">InclusionFeatureCollection</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">int2bbool</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">int2ddouble</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">interiorPoint</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">interiorRingN</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">Interpolate</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">intersection</ogc:FunctionName>
            <ogc:FunctionName nArgs="7">IntersectionFeatureCollection</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">intersects</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">intersects3D</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">isClosed</ogc:FunctionName>
            <ogc:FunctionName nArgs="0">isCoverage</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">isEmpty</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">isLike</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">isNull</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">isometric</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">isRing</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">isSimple</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">isValid</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">isWithinDistance</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">isWithinDistance3D</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">Jenks</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">length</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">lessEqualThan</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">lessThan</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">list</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">log</ogc:FunctionName>
            <ogc:FunctionName nArgs="4">LRSGeocode</ogc:FunctionName>
            <ogc:FunctionName nArgs="5">LRSMeasure</ogc:FunctionName>
            <ogc:FunctionName nArgs="5">LRSSegment</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">max</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">max_2</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">max_3</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">max_4</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">min</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">min_2</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">min_3</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">min_4</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">mincircle</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">minimumdiameter</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">minrectangle</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">modulo</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">MultiplyCoverages</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">Nearest</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">not</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">notEqualTo</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">numberFormat</ogc:FunctionName>
            <ogc:FunctionName nArgs="5">numberFormat2</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">numGeometries</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">numInteriorRing</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">numPoints</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">octagonalenvelope</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">offset</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">overlaps</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">parameter</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">parseBoolean</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">parseDouble</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">parseInt</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">parseLong</ogc:FunctionName>
            <ogc:FunctionName nArgs="0">pi</ogc:FunctionName>
            <ogc:FunctionName nArgs="4">PointBuffers</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">pointN</ogc:FunctionName>
            <ogc:FunctionName nArgs="7">PointStacker</ogc:FunctionName>
            <ogc:FunctionName nArgs="6">PolygonExtraction</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">pow</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">property</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">PropertyExists</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">Quantile</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">Query</ogc:FunctionName>
            <ogc:FunctionName nArgs="0">random</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">RangeLookup</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">RasterAsPointCollection</ogc:FunctionName>
            <ogc:FunctionName nArgs="4">RasterZonalStatistics</ogc:FunctionName>
            <ogc:FunctionName nArgs="5">Recode</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">RectangularClip</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">relate</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">relatePattern</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">Reproject</ogc:FunctionName>
            <ogc:FunctionName nArgs="4">rescaleToPixels</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">rint</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">round</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">round_2</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">roundDouble</ogc:FunctionName>
            <ogc:FunctionName nArgs="6">ScaleCoverage</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">setCRS</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">Simplify</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">sin</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">Snap</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">sqrt</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">StandardDeviation</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">startAngle</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">startPoint</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">strCapitalize</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">strConcat</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">strEndsWith</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">strEqualsIgnoreCase</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">strIndexOf</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">strLastIndexOf</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">strLength</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">strMatches</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">strPosition</ogc:FunctionName>
            <ogc:FunctionName nArgs="4">strReplace</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">strStartsWith</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">strSubstring</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">strSubstringStart</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">strToLowerCase</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">strToUpperCase</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">strTrim</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">strTrim2</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">StyleCoverage</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">symDifference</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">tan</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">toDegrees</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">toRadians</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">touches</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">toWKT</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">Transform</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">union</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">UnionFeatureCollection</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">Unique</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">UniqueInterval</ogc:FunctionName>
            <ogc:FunctionName nArgs="6">VectorToRaster</ogc:FunctionName>
            <ogc:FunctionName nArgs="3">VectorZonalStatistics</ogc:FunctionName>
            <ogc:FunctionName nArgs="1">vertices</ogc:FunctionName>
            <ogc:FunctionName nArgs="2">within</ogc:FunctionName>
          </ogc:FunctionNames>
        </ogc:Functions>
      </ogc:ArithmeticOperators>
    </ogc:Scalar_Capabilities>
    <ogc:Id_Capabilities>
      <ogc:FID/>
      <ogc:EID/>
    </ogc:Id_Capabilities>
  </ogc:Filter_Capabilities>
</wfs:WFS_Capabilities>

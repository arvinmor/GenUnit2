within OpalRT_v2.Electrical.PartialModel;
partial model Exciter
  Modelica.Blocks.Interfaces.RealOutput EFD annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput ETERM annotation(Placement(visible = true, transformation(origin={-100,-28},    extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput EFD0 annotation(Placement(visible = true, transformation(origin = {100, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput VREF annotation(Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput VREF0 annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {-100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput VOTHSG annotation(Placement(visible = true, transformation(origin={-100,6},     extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput IFD annotation (Placement(
      visible=true,
      transformation(
        origin={-100,-52},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={-100,50},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Interfaces.RealInput ETERM0 annotation (Placement(
      visible=true,
      transformation(
        origin={-100,-78},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={96,60},
        extent={{10,-10},{-10,10}},
        rotation=0)));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-1.35568, 42.3522}, extent = {{-37.4, -19.63}, {28.0253, -65.3174}}, textString = "%name"), Text(origin = {-49.01, -23.57}, extent = {{-37.4, -19.63}, {0.62, -44.82}}, textString = "VREF"), Text(origin = {-48.76, -44.81}, extent = {{-37.4, -19.63}, {6.3, -48.03}}, textString = "VREF0"), Text(origin = {-47.7763, 110.006}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "ETERM"), Rectangle(origin = {-0.123457, -0.123457}, extent = {{-100.123, 99.8765}, {100.123, -99.8765}}), Text(origin = {78.642, -30.978}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "EFD"), Text(origin = {75.19, -51.97}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "EFD0"), Text(origin = {-49.0622, 50.7648}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "VOTHSG"),
                                                                                                                                                                                                        Text(origin={
              -67.9339,79.2655},                                                                                                                                                                                                        extent={{
              -20.0661,-19.2655},{9.07768,-39.1395}},
          textString="IFD",
          lineColor={0,0,0}),                                                                                                                                                                                                        Text(origin={
              66.2237,90.006},                                                                                                                                                                                                        extent = {{-37.4, -19.63}, {16.92, -39.88}},
          textString="ETERM0",
          lineColor={0,0,0})}));
end Exciter;

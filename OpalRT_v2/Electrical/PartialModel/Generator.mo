within OpalRT_v2.Electrical.PartialModel;
partial model Generator
  parameter Boolean ex_en = false;
  parameter Boolean tg_en = false;
  Modelica.Blocks.Interfaces.RealInput PMECH annotation(Placement(visible = true, transformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0),
      iconTransformation(extent={{-110,-44},{-90,-24}})));
  NonElectrical.Connector.PwPin p annotation (Placement(
      visible=true,
      transformation(
        origin={100,-80},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={100,-80},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Interfaces.RealOutput SLIP annotation (Placement(
      visible=true,
      transformation(
        origin={100,-26},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={100,80},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Interfaces.RealOutput PMECH0 annotation(Placement(visible = true, transformation(origin = {-100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin={-100,-56},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput EFD0 annotation(Placement(visible = true, transformation(origin={-102,40},    extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin={-102,20},    extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput ETERM annotation(Placement(visible = true, transformation(origin={100,80},    extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={100,-28},  extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput EFD annotation(Placement(visible = true, transformation(origin={-100,48},    extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin={-100,48},    extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput TRIP annotation(Placement(visible = true, transformation(origin = {-20, 100}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {0, 100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput VSI[6] annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={0,-104}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={0,-104})));
  NonElectrical.Connector.signalPassThrough intEFDconnect if
                                               not (ex_en)
    annotation (Placement(transformation(extent={{-80,42},{-68,54}})));
  NonElectrical.Connector.signalPassThrough intPMECHconnect if
                                                 not (tg_en)
    annotation (Placement(transformation(extent={{-82,-66},{-70,-54}})));
  Modelica.Blocks.Interfaces.RealOutput IFD annotation (Placement(
      visible=true,
      transformation(
        origin={100,32},
        extent={{-10,-10},{10,10}},
        rotation=0),
      iconTransformation(
        origin={100,32},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  Modelica.Blocks.Interfaces.RealOutput ETERM0 annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=180,
        origin={-100,78}), iconTransformation(
        extent={{10,-10},{-10,10}},
        rotation=0,
        origin={-102,82})));
equation
  connect(EFD, intEFDconnect.u)
    annotation (Line(points={{-100,48},{-80.24,48}}, color={0,0,127}));
  connect(intEFDconnect.y, EFD0) annotation (Line(points={{-67.64,48},{-66,48},
          {-66,40},{-102,40}},color={0,0,127}));
  connect(PMECH, intPMECHconnect.u)
    annotation (Line(points={{-100,-60},{-82.24,-60}}, color={0,0,127}));
  connect(intPMECHconnect.y, PMECH0) annotation (Line(points={{-69.64,-60},{-66,
          -60},{-66,-80},{-100,-80}}, color={0,0,127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin={
              15.5412,34.1639},                                                                                                                                                                                                        extent={{
              -41.5412,-14.1639},{31.1284,-47.1291}},                                                                                                                                                                                                        textString = "%name"), Text(origin={
              -49.0116,78.4274},                                                                                                                                                                                                        extent = {{-37.4, -19.63}, {0.62, -44.82}}, textString = "EFD"), Text(origin={
              -48.7638,55.1899},                                                                                                                                                                                                        extent = {{-37.4, -19.63}, {6.29901, -48.0299}}, textString = "EFD0"), Text(origin={
              -50.9846,-4.2637},                                                                                                                                                                                                        extent = {{-37.4, -19.63}, {16.9163, -39.8817}}, textString = "PMECH"), Text(origin={
              -51.7523,-25.0047},                                                                                                                                                                                                        extent = {{-37.4, -19.63}, {28.5249, -40.3738}}, textString = "PMECH0"), Text(origin={
              68.52,108.5},                                                                                                                                                                                                        extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "ETERM"), Text(origin={
              80.223,-0.2415},                                                                                                                                                                                                       extent = {{-37.4, -19.63}, {16.92, -39.88}},
          textString="SLIP",
          lineColor={0,0,0}),                                                                                                                                                                                                        Text(origin = {70, -49.7454}, extent = {{1.85926, -19.63}, {16.92, -39.88}}, textString = "P"), Rectangle(origin = {-0.123457, -0.123457}, extent = {{-100.123, 99.8765}, {100.123, -99.8765}}), Text(origin = {19.38, 112.41}, extent = {{-37.4, -19.63}, {0.62, -44.82}}, textString = "TRIP"),
                                                                                                                                                                                                        Text(origin={
              5.1601,-56.4046},                                                                                                                                                                                                        extent={{
              -19.5447,-19.4891},{8.83994,-39.5954}},
          textString="VSI",
          lineColor={0,0,0}),                                                                                                                                                                                                        Text(origin={
              80.8931,56.7866},                                                                                                                                                                                                        extent={{
              -18.8931,-18.7866},{8.54702,-38.1666}},
          textString="IFD",
          lineColor={0,0,0}),                                                                                                                                                                           Text(origin={
              -50.8178,107.448},                                                                                                                                                                                                        extent={{
              -37.1822,-17.4475},{16.8178,-35.4475}},
          lineColor={0,0,0},
          textString="ETERM0")}));
end Generator;

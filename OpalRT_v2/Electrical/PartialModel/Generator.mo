within OpalRT_v2.Electrical.PartialModel;
partial model Generator
  Modelica.Blocks.Interfaces.RealInput PMECH annotation(Placement(visible = true, transformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Connector.PwPin                      p annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput SPEED annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput PMECH0 annotation(Placement(visible = true, transformation(origin = {-100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {-100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput EFD0 annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {-100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput ETERM annotation(Placement(visible = true, transformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput EFD annotation(Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput TRIP annotation(Placement(visible = true, transformation(origin = {-20, 100}, extent = {{-10, -10}, {10, 10}}, rotation = -90), iconTransformation(origin = {0, 100}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Modelica.Blocks.Interfaces.RealOutput VSI annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={0,-104}), iconTransformation(
        extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={0,-104})));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-1.35568, 42.3522}, extent = {{-37.4, -19.63}, {28.0253, -65.3174}}, textString = "%name"), Text(origin = {-49.0116, 96.4274}, extent = {{-37.4, -19.63}, {0.62, -44.82}}, textString = "EFD"), Text(origin = {-48.7638, 75.1899}, extent = {{-37.4, -19.63}, {6.29901, -48.0299}}, textString = "EFD0"), Text(origin = {-50.9846, -28.2637}, extent = {{-37.4, -19.63}, {16.9163, -39.8817}}, textString = "PMECH"), Text(origin = {-49.7523, -49.0047}, extent = {{-37.4, -19.63}, {28.5249, -40.3738}}, textString = "PMECH0"), Text(origin = {68.52, 90.5}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "ETERM"), Text(origin = {72.223, 29.7585}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "SPEED"), Text(origin = {70, -49.7454}, extent = {{1.85926, -19.63}, {16.92, -39.88}}, textString = "P"), Rectangle(origin = {-0.123457, -0.123457}, extent = {{-100.123, 99.8765}, {100.123, -99.8765}}), Text(origin = {19.38, 112.41}, extent = {{-37.4, -19.63}, {0.62, -44.82}}, textString = "TRIP"),
                                                                                                                                                                                                        Text(origin={
              7.16006,-54.4046},                                                                                                                                                                                                        extent={{
              -19.5447,-19.4891},{8.83994,-39.5954}},
          textString="VSI",
          lineColor={0,0,0})}));
end Generator;

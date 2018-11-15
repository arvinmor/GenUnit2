package GenUnit_v2
  package Partial_models
    partial model Generator
      Modelica.Blocks.Interfaces.RealInput PMECH annotation(Placement(visible = true, transformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      OpalRT.NonElectrical.Connector.PwPin p annotation(Placement(visible = true, transformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput SPEED annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput PMECH0 annotation(Placement(visible = true, transformation(origin = {-100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {-100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput EFD0 annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {-100, 40}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput ETERM annotation(Placement(visible = true, transformation(origin = {100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput EFD annotation(Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-1.35568, 42.3522}, extent = {{-37.4, -19.63}, {28.0253, -65.3174}}, textString = "%name"), Text(origin = {-49.0116, 96.4274}, extent = {{-37.4, -19.63}, {0.62, -44.82}}, textString = "EFD"), Text(origin = {-48.7638, 75.1899}, extent = {{-37.4, -19.63}, {6.29901, -48.0299}}, textString = "EFD0"), Text(origin = {-50.9846, -28.2637}, extent = {{-37.4, -19.63}, {16.9163, -39.8817}}, textString = "PMECH"), Text(origin = {-49.7523, -49.0047}, extent = {{-37.4, -19.63}, {28.5249, -40.3738}}, textString = "PMECH0"), Text(origin = {68.52, 90.5}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "ETERM"), Text(origin = {72.223, 29.7585}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "SPEED"), Text(origin = {70, -49.7454}, extent = {{1.85926, -19.63}, {16.92, -39.88}}, textString = "P"), Rectangle(origin = {-0.123457, -0.123457}, extent = {{-100.123, 99.8765}, {100.123, -99.8765}})}));
    end Generator;

    partial model Exciter
      Modelica.Blocks.Interfaces.RealOutput EFD annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput ETERM annotation(Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput EFD0 annotation(Placement(visible = true, transformation(origin = {100, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput VREF annotation(Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput VREF0 annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {-100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-1.35568, 42.3522}, extent = {{-37.4, -19.63}, {28.0253, -65.3174}}, textString = "%name"), Text(origin = {-49.01, -23.57}, extent = {{-37.4, -19.63}, {0.62, -44.82}}, textString = "VREF"), Text(origin = {-48.76, -44.81}, extent = {{-37.4, -19.63}, {6.3, -48.03}}, textString = "VREF0"), Text(origin = {-47.7763, 110.006}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "ETERM"), Rectangle(origin = {-0.123457, -0.123457}, extent = {{-100.123, 99.8765}, {100.123, -99.8765}}), Text(origin = {78.642, -30.978}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "EFD"), Text(origin = {75.19, -51.97}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "EFD0")}));
    end Exciter;

    partial model TurbineGovernor
      Modelica.Blocks.Interfaces.RealOutput PMECH annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput SPEED annotation(Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput PMECH0 annotation(Placement(visible = true, transformation(origin = {100, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput GREF annotation(Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput GREF0 annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {-100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics = {Text(origin = {-1.35568, 42.3522}, extent = {{-37.4, -19.63}, {28.0253, -65.3174}}, textString = "%name"), Text(origin = {-49.01, -23.57}, extent = {{-37.4, -19.63}, {0.62, -44.82}}, textString = "GREF"), Text(origin = {-48.76, -44.81}, extent = {{-37.4, -19.63}, {6.3, -48.03}}, textString = "GREF0"), Text(origin = {-47.7763, 110.006}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "SPEED"), Rectangle(origin = {-0.123457, -0.123457}, extent = {{-100.123, 99.8765}, {100.123, -99.8765}}), Text(origin = {69.0124, -30.4842}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "PMECH"), Text(origin = {69.2641, -51.7231}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "PMECH0")}));
    end TurbineGovernor;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Partial_models;

  package Architecture
    partial model Gen_Ex_Tg
      replaceable GenUnit_v2.Partial_models.Exciter exciter annotation(Placement(visible = true, transformation(origin = {-40, 30}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
      replaceable GenUnit_v2.Partial_models.Generator generator annotation(Placement(visible = true, transformation(origin = {40, 0}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
      replaceable GenUnit_v2.Partial_models.TurbineGovernor turbinegovernor1 annotation(Placement(visible = true, transformation(origin = {-40, -30}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
    equation
      connect(turbinegovernor1.SPEED, generator.ETERM) annotation(Line(points = {{-65, -10}, {-75.0617, -10}, {-75.0617, -67.6543}, {78.2716, -67.6543}, {78.2716, 0.740741}, {64.6914, 0.740741}, {64.6914, 0.740741}}, color = {0, 0, 127}));
      connect(turbinegovernor1.PMECH0, generator.PMECH0) annotation(Line(points = {{-15, -50}, {-1.48148, -50}, {-1.48148, -19.7531}, {14.321, -19.7531}, {14.321, -19.7531}}, color = {0, 0, 127}));
      connect(turbinegovernor1.PMECH, generator.PMECH) annotation(Line(points = {{-15, -45}, {-3.95062, -45}, {-3.95062, -15.0617}, {13.0864, -15.0617}, {13.0864, -15.0617}}, color = {0, 0, 127}));
      connect(generator.SPEED, exciter.ETERM) annotation(Line(points = {{65, 15}, {78.5185, 15}, {78.5185, 66.1728}, {-72.0988, 66.1728}, {-72.0988, 49.3827}, {-65.679, 49.3827}, {-65.679, 49.3827}}, color = {0, 0, 127}));
      connect(exciter.EFD0, generator.EFD0) annotation(Line(points = {{-15, 10}, {15.0617, 10}, {15.0617, 9.87654}, {15.0617, 9.87654}}, color = {0, 0, 127}));
      connect(exciter.EFD, generator.EFD) annotation(Line(points = {{-15, 15}, {13.5802, 15}, {13.5802, 15.8025}, {13.5802, 15.8025}}, color = {0, 0, 127}));
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1})));
    end Gen_Ex_Tg;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Architecture;

  package Components
    package Gen
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end Gen;

    package Ex
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end Ex;

    package Tg
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end Tg;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Components;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end GenUnit_v2;
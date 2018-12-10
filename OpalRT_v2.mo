package OpalRT_v2
  package Electrical
    package PartialModel
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

      partial model Exciter
        Modelica.Blocks.Interfaces.RealOutput EFD annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput ETERM annotation(Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput EFD0 annotation(Placement(visible = true, transformation(origin = {100, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput VREF annotation(Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput VREF0 annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {-100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput VOTHSG annotation(Placement(visible = true, transformation(origin={-100,6},     extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-1.35568, 42.3522}, extent = {{-37.4, -19.63}, {28.0253, -65.3174}}, textString = "%name"), Text(origin = {-49.01, -23.57}, extent = {{-37.4, -19.63}, {0.62, -44.82}}, textString = "VREF"), Text(origin = {-48.76, -44.81}, extent = {{-37.4, -19.63}, {6.3, -48.03}}, textString = "VREF0"), Text(origin = {-47.7763, 110.006}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "ETERM"), Rectangle(origin = {-0.123457, -0.123457}, extent = {{-100.123, 99.8765}, {100.123, -99.8765}}), Text(origin = {78.642, -30.978}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "EFD"), Text(origin = {75.19, -51.97}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "EFD0"), Text(origin = {-49.0622, 50.7648}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "VOTHSG")}));
      end Exciter;

      partial model TurbineGovernor
        Modelica.Blocks.Interfaces.RealOutput PMECH annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput SPEED annotation(Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput PMECH0 annotation(Placement(visible = true, transformation(origin = {100, -20}, extent = {{10, -10}, {-10, 10}}, rotation = 0), iconTransformation(origin = {100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealInput GREF annotation(Placement(visible = true, transformation(origin = {-100, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
        Modelica.Blocks.Interfaces.RealOutput GREF0 annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 180), iconTransformation(origin = {-100, -80}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
        annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Text(origin = {-1.35568, 42.3522}, extent = {{-37.4, -19.63}, {28.0253, -65.3174}}, textString = "%name"), Text(origin = {-49.01, -23.57}, extent = {{-37.4, -19.63}, {0.62, -44.82}}, textString = "GREF"), Text(origin = {-48.76, -44.81}, extent = {{-37.4, -19.63}, {6.3, -48.03}}, textString = "GREF0"), Text(origin = {-47.7763, 110.006}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "SPEED"), Rectangle(origin = {-0.123457, -0.123457}, extent = {{-100.123, 99.8765}, {100.123, -99.8765}}), Text(origin = {69.0124, -30.4842}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "PMECH"), Text(origin = {69.2641, -51.7231}, extent = {{-37.4, -19.63}, {16.92, -39.88}}, textString = "PMECH0")}));
      end TurbineGovernor;

      partial model PowerSystemStabilizer
        Modelica.Blocks.Interfaces.RealInput PSSin annotation (Placement(
              transformation(extent={{-120,-80},{-80,-40}}), iconTransformation(
                extent={{-120,-80},{-80,-40}})));
        Modelica.Blocks.Interfaces.RealOutput VOTHSG annotation (Placement(
              transformation(extent={{92,-70},{112,-50}}), iconTransformation(
                extent={{92,-70},{112,-50}})));
        annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
              Rectangle(extent={{-100,100},{100,-100}}, lineColor={28,108,200}),                                                                                                                                                                                                        Text(origin={
                    6.64432,44.3522},                                                                                                                                                                                                        extent = {{-37.4, -19.63}, {28.0253, -65.3174}},
                textString="%name",
                lineColor={0,0,0}),                                                                                                                                                                                                        Text(origin={
                    -57.0382,-40.1326},                                                                                                                                                                                                        extent={{
                    -20.9618,-9.86736},{15.7078,-32.8326}},
                lineColor={0,0,0},
                textString="VSI"),                                                                                                                                                                                                        Text(origin={
                    50.1144,-36.414},                                                                                                                                                                                                        extent={{
                    -46.1144,-11.586},{34.5552,-38.5512}},
                lineColor={0,0,0},
                textString="VOTHSG")}),                                Diagram(
              coordinateSystem(preserveAspectRatio=false)));
      end PowerSystemStabilizer;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end PartialModel;

    package Generator
      model GEN1
        parameter Real p1 = 1;
        parameter Real P2 = 2;
        extends OpalRT_v2.Electrical.PartialModel.Generator;
      equation
        ETERM = 1;
        SPEED = 0;
        EFD0 = 1;
        VSI = 0;
        PMECH0=1;
        p.ir = 1;
        p.ii = 0;
      end GEN1;

      model GEN2
        extends OpalRT_v2.Electrical.PartialModel.Generator;
      equation
        ETERM = 1;
        SPEED = 0;
        VSI = 0;
        EFD0 = 1;
        PMECH0=1;
        p.ir = 0;
        p.ii = 0;
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end GEN2;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end Generator;

    package Exciter
      model EX1
        extends OpalRT_v2.Electrical.PartialModel.Exciter;
      equation
        EFD = 1;
        VREF0=1;
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end EX1;

      model EX2
        extends OpalRT_v2.Electrical.PartialModel.Exciter;
      equation
          EFD = 1;
        VREF0=1;

        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end EX2;

      model noExciter
        extends OpalRT_v2.Electrical.PartialModel.Exciter;
        Modelica.Blocks.Sources.Constant const(k=0)
          annotation (Placement(transformation(extent={{-42,30},{-62,50}})));
      equation

        connect(EFD0, EFD) annotation (Line(points={{100,-20},{80,-20},{80,0},{100,0}},
              color={0,0,127}));
        connect(const.y, VREF0)
          annotation (Line(points={{-63,40},{-100,40}}, color={0,0,127}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end noExciter;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end Exciter;

    package TurbineGovernor
      model TG1
        extends OpalRT_v2.Electrical.PartialModel.TurbineGovernor;
      equation
        PMECH = 1;
        GREF0=1;

        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end TG1;

      model TG2
        extends OpalRT_v2.Electrical.PartialModel.TurbineGovernor;
      equation
        PMECH = 1;
        GREF0=1;

        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end TG2;

      model noTurbineGovernor
        extends OpalRT_v2.Electrical.PartialModel.TurbineGovernor;
        Modelica.Blocks.Sources.Constant const(k=0)
          annotation (Placement(transformation(extent={{-38,30},{-58,50}})));
      equation

        connect(PMECH0, PMECH) annotation (Line(points={{100,-20},{80,-20},{80,
                0},{100,0}}, color={0,0,127}));
        connect(const.y, GREF0)
          annotation (Line(points={{-59,40},{-100,40}}, color={0,0,127}));
        annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
      end noTurbineGovernor;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end TurbineGovernor;

    package PowerSystemStabilizer

      model PSS1
        extends PartialModel.PowerSystemStabilizer;
      end PSS1;

      model PSS2
        extends PartialModel.PowerSystemStabilizer;
      end PSS2;
    end PowerSystemStabilizer;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Electrical;

  package Connector
    connector PwPin
      Real vr;
      // real part of the voltage
      Real vi;
      // imaginary part of the voltage
      flow Real ir;
      // real part of the current
      flow Real ii;
      // imaginary part of the current
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Polygon(origin = {-0.39, 0.11}, fillColor = {255, 0, 0},
                fillPattern =                                                                                                                                                                                                  FillPattern.Solid, points = {{-99.613, 100.115}, {100.161, -1.01398}, {-99.613, -100.111}, {-99.613, 100.115}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end PwPin;

    connector InterfacePin
      extends Real;
      annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Polygon(origin = {-0.39, 0.11}, fillColor = {115, 170, 0},
                fillPattern =                                                                                                                                                                                                    FillPattern.Solid, points = {{-99.613, 100.115}, {100.161, -1.01398}, {-99.613, -100.111}, {-99.613, 100.115}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
    end InterfacePin;

    model PIN2INOUT "Convert PIN signal to: Voltages as Inputs and Current as Output. this block can be used as an interface with FMU, since FMU accepts voltage as its input and generates current as its output."
      PwPin                                p annotation(Placement(visible = true, transformation(origin = {-60, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, -80}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput ii annotation(Placement(visible = true, transformation(origin = {-20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealOutput ir annotation(Placement(visible = true, transformation(origin = {-20, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {102, 44}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput vr annotation(Placement(visible = true, transformation(origin = {80, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-100, 78}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
      Modelica.Blocks.Interfaces.RealInput vi annotation(Placement(visible = true, transformation(origin = {80, -20}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-102, 2}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
    equation
      p.ir = -ir;
      p.ii = -ii;
      p.vr = vr;
      p.vi = vi;
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2}), graphics={  Rectangle(origin = {0, -0.513479}, extent = {{-99.8716, 99.6149}, {99.8716, -99.6149}}), Text(origin = {-4.94913, -16.9072}, extent = {{-69.7037, 67.9031}, {81.257, -45.8235}}, textString = "PIN2INOUT"), Text(origin = {-75.5144, 78.0295}, extent = {{-11.42, 7.57}, {4.74478, -8.59696}}, textString = "Vr"), Text(origin = {-85.8009, -11.1781}, extent = {{-11.42, 7.57}, {4.74, -8.6}}, textString = "Vi"), Text(origin = {-76.18, -77.71}, extent = {{-11.42, 7.57}, {4.74, -8.6}}, textString = "PIN"), Text(origin = {82.2036, 48.9879}, extent = {{-11.42, 7.57}, {8.33, -11.94}}, textString = "ir"), Text(origin = {81.5603, -35.9219}, extent = {{-11.42, 7.57}, {8.33, -11.94}}, textString = "ii")}));
    end PIN2INOUT;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Connector;
  annotation (uses(Modelica(version="3.2.2")));
end OpalRT_v2;

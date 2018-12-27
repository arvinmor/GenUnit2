within OpalRT_v2.NonElectrical;
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

  model signalPassThrough
    Modelica.Blocks.Interfaces.RealInput u
      annotation (Placement(transformation(extent={{-124,-20},{-84,20}})));
    Modelica.Blocks.Interfaces.RealOutput y
      annotation (Placement(transformation(extent={{96,-10},{116,10}})));
  equation
    connect(u, y) annotation (Line(points={{-104,0},{106,0}}, color={0,0,127}));
    annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
            Rectangle(extent={{-100,100},{100,-100}}, lineColor={28,108,200}),
            Text(
            extent={{-34,18},{32,-16}},
            lineColor={28,108,200},
            textString="%name")}), Diagram(coordinateSystem(preserveAspectRatio
            =false)));
  end signalPassThrough;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end Connector;

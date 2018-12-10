within OpalRT_v2.Electrical.PartialModel;
partial model PowerSystemStabilizer
  Modelica.Blocks.Interfaces.RealInput VSI annotation (Placement(transformation(
          extent={{-120,-80},{-80,-40}}), iconTransformation(extent={{-120,-80},
            {-80,-40}})));
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

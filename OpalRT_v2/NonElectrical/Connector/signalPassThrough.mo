within OpalRT_v2.NonElectrical.Connector;
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
          textString="%name")}), Diagram(coordinateSystem(preserveAspectRatio=
            false)));
end signalPassThrough;

within OpalRT_v2.Electrical.PowerSystemStabilizer;
model noPSS
  extends PartialModel.PowerSystemStabilizer;
  Modelica.Blocks.Sources.Constant const(k=0)
    annotation (Placement(transformation(extent={{56,-70},{76,-50}})));
equation
  connect(const.y, VOTHSG)
    annotation (Line(points={{77,-60},{102,-60}}, color={0,0,127}));
end noPSS;

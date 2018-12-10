within OpalRT_v2.Electrical.TurbineGovernor;
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

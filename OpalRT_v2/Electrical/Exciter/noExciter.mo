within OpalRT_v2.Electrical.Exciter;
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

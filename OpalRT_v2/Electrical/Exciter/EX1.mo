within OpalRT_v2.Electrical.Exciter;
model EX1
  extends OpalRT_v2.Electrical.PartialModel.Exciter;
equation
  EFD = 1;
  VREF0=1;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end EX1;

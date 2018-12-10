within OpalRT_v2.Electrical.Generator;
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

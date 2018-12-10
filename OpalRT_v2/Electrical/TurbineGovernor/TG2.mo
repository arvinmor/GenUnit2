within OpalRT_v2.Electrical.TurbineGovernor;
model TG2
  extends OpalRT_v2.Electrical.PartialModel.TurbineGovernor;
equation
  PMECH = 1;
  GREF0=1;

  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
end TG2;

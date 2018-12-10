within OpalRT_v2.Electrical.Generator;
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

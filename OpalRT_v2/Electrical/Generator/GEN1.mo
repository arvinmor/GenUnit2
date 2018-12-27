within OpalRT_v2.Electrical.Generator;
model GEN1
  parameter Real p1 = 1;
  parameter Real P2 = 2;
  extends OpalRT_v2.Electrical.PartialModel.Generator;
equation
  ETERM = 1;
  ETERM0 = 1;
  IFD = 1;
  SLIP = 0;
  EFD0 = 1;
  VSI = zeros(6);
  PMECH0=1;
  p.ir = 1;
  p.ii = 0;
end GEN1;

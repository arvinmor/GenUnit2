within OpalRT_v2.Electrical.Generator;
model GENSAL
  extends OpalRT_v2.Electrical.PartialModel.Generator;
  import OpalRT_v2.NonElectrical.Math.Nonlinear.sat_q;
  constant Real pi = Modelica.Constants.pi;
  parameter Integer IBUS = 100 "Located system bus";
  parameter String ID = "M1" "Machine Identifier";
  parameter Real P_gen = 1100 "Bus Active Power, MW";
  parameter Real Q_gen = 342.702 "Bus Reactive Power, MVAR";
  parameter Real Vt_abs = 1.03 "Bus Voltage Magnitude, p.u.";
  parameter Real Vt_ang = -10.96 "Bus Voltage Angle, deg.";
  parameter Real SB = 1000 "Machine Base Power, MVA";
  parameter Real fn = 50 "Nominal frequency";
  parameter Real ZSOURCE_RE = 0 "Machine source impedence";
  parameter Real Tdo_p = 7 "d-axis transient time constant";
  parameter Real Tdo_s = 0.03 "d-axis sub-transient time constant, s";
  //  parameter Real Tqo_p = 0.7 "q-axis transient time constant, s";
  parameter Real Tqo_s = 0.04 "d-axis sub-transient time constant, s";
  parameter Real H = 50 "Inertia constant";
  parameter Real D = 0 "Speed damping";
  parameter Real Xd = 0.2 "d-axis reactance, p.u.";
  parameter Real Xq = 0.19 "q-axis reactance, p.u.";
  parameter Real Xd_p = 0.06 "d-axis transient reactance, p.u.";
  //  parameter Real Xq_p = 0.06 "q-axis transient reactance, p.u.";
  parameter Real Xd_s = 0.02 "d-axis sub-transient reactance, p.u.";
  parameter Real Xl = 0.03 "Reactance due to the leakage flux which does not cross the air gap, p.u.";
  parameter Real S1 = 0.4 "saturation function value for 1 p.u. input";
  parameter Real S12 = 0.8 "saturation function value for 1.2 p.u. input";
  parameter Real Xq_s = Xd_s "q-axis sub-transient reactance, p.u.";
  parameter Real ZSOURCE_IM = Xd_s "Machine source impedence";
  Real Eq_p;
  Real is_r, is_i;
  Real is_d, is_q;
  Real iq, id;
  Real PSI1_d, PSI2_q;
  Real PSId_s, PSIq_s, PSI_s;
  Real PSI_d, PSI_q;
  Real TELEC "The generator rotor electrical torque";
  Real PELEC "The generator electrical active power, p.u.";
  //  Real QELEC "The generator electrical reactive power, p.u.";
  Real ETERM_ang;
  Real dsatEq_p;
  Real PMECH1, EFD1;
  Real ITERM_mag;
  Real ITERM_ang;
  Real ETERM_ang0;
  Real ITERM_ang0;
  Real SPEED;
  Real ANGLE;
  Real QELEC;
  // Modelica.Blocks.Interfaces.RealOutput EX_OUT[8] annotation(Placement(visible = true, transformation(origin = {10, 110}, extent = {{-19, 19}, {19, -19}}, rotation = 90), iconTransformation(origin = {-108, 78}, extent = {{8.5, -8.5}, {-8.5, 8.5}}, rotation = 360)));
protected
  parameter Real ws(fixed = false);
  parameter Real P0(fixed = false);
  parameter Real Q0(fixed = false);
  parameter Real vr0(fixed = false);
  parameter Real vi0(fixed = false);
  parameter Real ir0(fixed = false);
  parameter Real ii0(fixed = false);
  parameter Real ZSOURCE_SQR(fixed = false);
  parameter Real ep_r0(fixed = false);
  parameter Real ep_i0(fixed = false);
  parameter Real ANGLE0(fixed = false);
  // parameter Real ep_q0  (fixed=false);
  parameter Real ANGLE0_DEG(fixed = false);
  parameter Real is_r0(fixed = false);
  parameter Real is_i0(fixed = false);
  parameter Real is_d0(fixed = false);
  parameter Real is_q0(fixed = false);
  parameter Real id0(fixed = false);
  parameter Real iq0(fixed = false);
  parameter Real PSId_s0(fixed = false);
  parameter Real PSIq_s0(fixed = false);
  parameter Real SPEED0(fixed = false);
  parameter Real n0(fixed = false);
  parameter Real Eq_p0(fixed = false);
  parameter Real dsat(fixed = false);
  parameter Real EFD_0(fixed = false);
  parameter Real PMECH_0(fixed = false);
  parameter Real ang_I(fixed = false);
  parameter Real It_abs0(fixed = false);
  Integer TRIPI;
initial algorithm
  ws := 2 * pi * fn;
  P0 := P_gen / SB;
  Q0 := Q_gen / SB;
  vr0 := Vt_abs * cos(Vt_ang * pi / 180);
  vi0 := Vt_abs * sin(Vt_ang * pi / 180);
  ir0 := (P0 * vr0 + Q0 * vi0) / Vt_abs ^ 2;
  ii0 := (P0 * vi0 - Q0 * vr0) / Vt_abs ^ 2;
  ang_I := atan2(ii0, ir0) "Terminal current angle, rad.";
  It_abs0 := sqrt(ir0 ^ 2 + ii0 ^ 2);
  ZSOURCE_SQR := ZSOURCE_IM ^ 2 + ZSOURCE_RE ^ 2;
  ep_r0 := vr0 + ZSOURCE_RE * ir0 - Xq * ii0;
  ep_i0 := vi0 + Xq * ir0 + ZSOURCE_RE * ii0;
  ANGLE0 := atan2(ep_i0, ep_r0);
  ANGLE0_DEG := ANGLE0 / pi * 180;
  is_r0 := ir0 + (vr0 * ZSOURCE_RE + vi0 * ZSOURCE_IM) / ZSOURCE_SQR;
  is_i0 := ii0 + (vi0 * ZSOURCE_RE - vr0 * ZSOURCE_IM) / ZSOURCE_SQR;
  is_d0 := sin(ANGLE0) * is_r0 - cos(ANGLE0) * is_i0;
  is_q0 := cos(ANGLE0) * is_r0 + sin(ANGLE0) * is_i0;
  id0 := sin(ANGLE0) * ir0 - cos(ANGLE0) * ii0;
  iq0 := cos(ANGLE0) * ir0 + sin(ANGLE0) * ii0;
  PSId_s0 := ZSOURCE_IM * is_d0 + ZSOURCE_RE * is_q0;
  PSIq_s0 := (-ZSOURCE_RE * is_d0) + ZSOURCE_IM * is_q0;
  SPEED0 := ws;
  n0 := 0;
  Eq_p0 := PSId_s0 + (Xd_p - Xd_s) * id0;
  dsat := sat_q(Eq_p0, 1, 1.2, S1, S12);
  EFD_0 := Eq_p0 * (1 + dsat) + (Xd - Xd_p) * id0;
  PMECH_0 := P0 + ZSOURCE_RE * (id0 ^ 2 + iq0 ^ 2);
  // initialization of states
  ANGLE := ANGLE0;
  SLIP := 0;
  Eq_p := Eq_p0;
  PSI1_d := Eq_p0 - (Xd_p - Xl) * id0;
  PSI2_q := (Xq - Xq_s) * iq0;
equation
  TRIPI = integer(TRIP);
  PMECH1 = if TRIPI == 0 then PMECH else 0;
  EFD1 = if TRIPI == 0 then EFD else 0;
  when TRIPI == 1 then
    reinit(SLIP, 0);
    reinit(Eq_p, 0);
    reinit(PSI1_d, 0);
    reinit(PSI2_q, 0);
    reinit(ANGLE, 0);
  end when;
  // derivatives
  if TRIPI == 0 then
    der(Eq_p) = 1 / Tdo_p * (EFD1 - IFD);
    der(PSI1_d) = 1 / Tdo_s * ((-PSI1_d) + Eq_p - (Xd_p - Xl) * id);
    der(PSI2_q) = 1 / Tqo_s * ((-PSI2_q) + (Xq - Xq_s) * iq);
    der(SLIP) = 1 / (2 * H) * ((PMECH1 - D * SLIP) / (1 + SLIP) - TELEC);
    der(ANGLE) = ws * SLIP;
  else
    der(ANGLE) = 0;
    der(SLIP) = 0;
    der(Eq_p) = 0;
    der(PSI1_d) = 0;
    der(PSI2_q) = 0;
  end if;
  // algebraic equations
  PSId_s = (Xd_s - Xl) / (Xd_p - Xl) * Eq_p + (Xd_p - Xd_s) / (Xd_p - Xl) * PSI1_d;
  PSIq_s = -PSI2_q;
  PSId_s = ZSOURCE_IM * is_d + ZSOURCE_RE * is_q;
  PSIq_s = (-ZSOURCE_RE * is_d) + ZSOURCE_IM * is_q;
  [is_r; is_i] = [sin(ANGLE), cos(ANGLE); -cos(ANGLE), sin(ANGLE)] * [is_d; is_q];
  p.ir = if TRIPI == 0 then is_r - (p.vr * ZSOURCE_RE + p.vi * ZSOURCE_IM) / ZSOURCE_SQR else 0;
  p.ii = if TRIPI == 0 then is_i - (p.vi * ZSOURCE_RE - p.vr * ZSOURCE_IM) / ZSOURCE_SQR else 0;
  [p.ir; p.ii] = [sin(ANGLE), cos(ANGLE); -cos(ANGLE), sin(ANGLE)] * [id; iq];
  PSI_s = (PSId_s ^ 2 + PSIq_s ^ 2) ^ 0.5;
  dsatEq_p = sat_q(Eq_p, 1, 1.2, S1, S12);
  IFD = (Xd - Xd_p) * (id - (Xd_p - Xd_s) / (Xd_p - Xl) ^ 2 * (PSI1_d + (Xd_p - Xl) * id - Eq_p)) + (1 + dsatEq_p) * Eq_p;
  SLIP = (SPEED - ws) / ws;
  PSI_d = PSId_s - Xd_s * id;
  PSI_q = PSIq_s - Xq_s * iq;
  TELEC = PSI_d * iq - PSI_q * id;
  ETERM = (p.vi ^ 2 + p.vr ^ 2) ^ 0.5;
  ETERM_ang = atan2(p.vi, p.vr);
  PELEC = p.vr * p.ir + p.vi * p.ii;
  QELEC = p.vi * p.ir - p.vr * p.ii;
  ETERM0 = Vt_abs;
  EFD0 = EFD_0;
  PMECH0 = PMECH_0;
  // VSI connection
  VSI[1] = SLIP "rotor speed deviation (pu)";
  VSI[2] = SLIP / 2 / pi "bus frequency deviation (pu)";
  VSI[3] = PELEC "generator electrical power on MBASE base (pu)";
  VSI[4] = PMECH1 - TELEC "generator accelerating power (pu)";
  VSI[5] = ETERM "bus voltage (pu)";
  VSI[6] = 0 "derivative of pu bus voltage";
  //der(ETERM);
  // EX_OUT connection
  ITERM_mag = (p.ir ^ 2 + p.ii ^ 2) ^ 0.5;
  ITERM_ang = atan2(p.ii, p.ir);
  ETERM_ang0 = atan2(vi0, vr0);
  ITERM_ang0 = ang_I;
//   EX_OUT[1] = ETERM;
//   EX_OUT[2] = ETERM_ang;
//   EX_OUT[3] = ITERM_mag;
//   EX_OUT[4] = ITERM_ang;
//   EX_OUT[5] = ETERM0;
//   EX_OUT[6] = ETERM_ang0;
//   EX_OUT[7] = It_abs0 "ITERM_mag0";
//   EX_OUT[8] = ITERM_ang0;
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1})), experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02), Documentation(info = "<html>

<p>
1- Salient Pole Generator Model (Quadratic Saturation on d-Axis)
</p>
<img src=\"modelica://OpalRT/resource/Electrical/GENSAL.png\"
     alt=\"GENSAL.png\"><br>

</html>"),
   Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1})));
end GENSAL;

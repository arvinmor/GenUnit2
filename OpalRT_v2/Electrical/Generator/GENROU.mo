within OpalRT_v2.Electrical.Generator;
model GENROU
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
  parameter Real ZSOURCE_IM = Xq_s "Machine source impedence";
  parameter Real Tdo_p = 7 "d-axis transient time constant";
  parameter Real Tdo_s = 0.03 "d-axis sub-transient time constant, s";
  parameter Real Tqo_p = 0.7 "q-axis transient time constant, s";
  parameter Real Tqo_s = 0.04 "d-axis sub-transient time constant, s";
  parameter Real H = 50 "Inertia constant";
  parameter Real D = 0 "Speed damping";
  parameter Real Xd = 0.2 "d-axis reactance, p.u.";
  parameter Real Xq = 0.19 "q-axis reactance, p.u.";
  parameter Real Xd_p = 0.06 "d-axis transient reactance, p.u.";
  parameter Real Xq_p = 0.06 "q-axis transient reactance, p.u.";
  parameter Real Xd_s = 0.02 "d-axis sub-transient reactance, p.u.";
  parameter Real Xq_s = Xd_s "q-axis sub-transient reactance, p.u.";
  parameter Real Xl = 0.03 "Reactance due to the leakage flux which does not cross the air gap, p.u.";
  parameter Real S1 = 0.4 "saturation function value for 1 p.u. input";
  parameter Real S12 = 0.8 "saturation function value for 1.2 p.u. input";
  Real Eq_p, Ed_p;
  Real iq, id;
  Real PSI1_d, PSI2_q;
  Real PSIq_s;
  Real TELEC "The generator rotor electrical torque";
  Real PELEC "The generator electrical active power, p.u.";
  //  Real Qe "The generator electrical reactive power, p.u.";
  Real ETERM_ang;
  Real dIFD;
  Real PMECH1, EFD1;
  Real PSId_s;
  Real is_d;
  Real is_q;
  Real is_r;
  Real is_i;
  Real PSI_d;
  Real PSI_q;
  Real PSI_s;
  Real ITERM_mag;
  Real ITERM_ang;
  Real ETERM_ang0;
  Real ITERM_ang0;
  Real ANGLE;
  Real SPEED;
  Real QELEC;
//  Modelica.Blocks.Interfaces.RealOutput EX_OUT[8] annotation(Placement(visible = true, transformation(origin = {10, 110}, extent = {{-19, 19}, {19, -19}}, rotation = 90), iconTransformation(origin = {-108, 88}, extent = {{8.5, -8.5}, {-8.5, 8.5}}, rotation = 360)));
protected
  parameter Real ws(fixed = false);
  parameter Real P0(fixed = false);
  parameter Real Q0(fixed = false);
  parameter Real vr0(fixed = false);
  parameter Real vi0(fixed = false);
  parameter Real ir0(fixed = false);
  parameter Real ii0(fixed = false);
  parameter Real ZSOURCE_SQR(fixed = false);
  parameter Real es_r0(fixed = false);
  parameter Real es_i0(fixed = false);
  parameter Real ang_P(fixed = false);
  parameter Real ang_I(fixed = false);
  parameter Real ang_PI(fixed = false);
  parameter Real PSI_s0(fixed = false);
  parameter Real It_abs0(fixed = false);
  //Include saturation effect in initialization equations (saturation function is based on KTH which is the same as PSSE)
  parameter Real dsat(fixed = false);
  //Initialize rotor angle (saturaiton considered same as KTH, I have to figure it out if it is correct)
  parameter Real a(fixed = false);
  parameter Real b(fixed = false);
  parameter Real ANGLE0(fixed = false);
  parameter Real ANGLE0_DEG(fixed = false);
  parameter Real is_r0(fixed = false);
  parameter Real is_i0(fixed = false);
  parameter Real is_d0(fixed = false);
  parameter Real is_q0(fixed = false);
  parameter Real id0(fixed = false);
  parameter Real iq0(fixed = false);
  parameter Real PSId_s0(fixed = false);
  parameter Real PSIq_s0(fixed = false);
  parameter Real EFD_0(fixed = false);
  parameter Real SPEED0(fixed = false);
  parameter Real PMECH_0(fixed = false);
  parameter Real Eq_p0(fixed = false);
  parameter Real PSI1_d0(fixed = false);
  parameter Real Ed_p0(fixed = false);
  parameter Real PSI2_q0(fixed = false);
  Integer TRIPI;
initial equation
  ws = 2 * pi * fn "rated angular velocity";
  P0 = P_gen / SB "Bus Active Power, p.u.";
  Q0 = Q_gen / SB "Bus Reactive Power, p.u.";
  vr0 = Vt_abs * cos(Vt_ang * pi / 180) "Terminal voltage initialization, real part, p.u.";
  vi0 = Vt_abs * sin(Vt_ang * pi / 180) "Terminal voltage initialization, imag part, p.u.";
  ir0 = (P0 * vr0 + Q0 * vi0) / Vt_abs ^ 2 "Terminal current initialization, real part, p.u.";
  ii0 = (P0 * vi0 - Q0 * vr0) / Vt_abs ^ 2 "Terminal current initialization, imag part, p.u.";
  ZSOURCE_SQR = ZSOURCE_IM ^ 2 + ZSOURCE_RE ^ 2;
  es_r0 = vr0 + ZSOURCE_RE * ir0 - ZSOURCE_IM * ii0 "sub-transient voltage initialization, real part, p.u.";
  es_i0 = vi0 + ZSOURCE_IM * ir0 + ZSOURCE_RE * ii0 "sub-transient voltage initialization, imag part, p.u.";
  ang_P = atan2(es_i0, es_r0) "sub-transient voltage angle, rad.";
  ang_I = atan2(ii0, ir0) "Terminal current angle, rad.";
  ang_PI = ang_P - ang_I "angle between sub-transient voltage and terminal current";
  PSI_s0 = sqrt(es_r0 ^ 2 + es_i0 ^ 2);
  It_abs0 = sqrt(ir0 ^ 2 + ii0 ^ 2);
  //Include saturation effect in initialization equations (saturation function is based on KTH which is the same as PSSE)
  dsat = sat_q(PSI_s0, 1, 1.2, S1, S12);
  //Initialize rotor angle (saturaiton considered same as KTH, I have to figure it out if it is correct)
  a = PSI_s0 + PSI_s0 * dsat * (Xq - Xl) / (Xd - Xl);
  b = It_abs0 * (Xd_s - Xq);
  ANGLE0 = atan(b * cos(ang_PI) / (b * sin(ang_PI) - a)) + ang_P "Rotor angle initialization, rad.";
  ANGLE0_DEG = ANGLE0 / pi * 180 "Rotor angle initialization, deg.";
  is_r0 = ir0 + (vr0 * ZSOURCE_RE + vi0 * ZSOURCE_IM) / ZSOURCE_SQR "Norton current initialization, real part, p.u.";
  is_i0 = ii0 + (vi0 * ZSOURCE_RE - vr0 * ZSOURCE_IM) / ZSOURCE_SQR "Norton current initialization, imag part, p.u.";
  is_d0 = sin(ANGLE0) * is_r0 - cos(ANGLE0) * is_i0 "Norton current initialization in rotor reference, d-axis, p.u.";
  is_q0 = cos(ANGLE0) * is_r0 + sin(ANGLE0) * is_i0 "Norton current initialization in rotor reference, q-axis, p.u.";
  id0 = sin(ANGLE0) * ir0 - cos(ANGLE0) * ii0 "Terminal current initialization in rotor reference, d-axis, p.u.";
  iq0 = cos(ANGLE0) * ir0 + sin(ANGLE0) * ii0 "Terminal current initialization in rotor reference, q-axis, p.u.";
  PSId_s0 = ZSOURCE_IM * is_d0 + ZSOURCE_RE * is_q0;
  PSIq_s0 = (-ZSOURCE_RE * is_d0) + ZSOURCE_IM * is_q0;
  EFD_0 = PSId_s0 + (Xd - Xd_s) * id0 + dsat * PSId_s0;
  PMECH_0 = P0 + ZSOURCE_RE * (id0 ^ 2 + iq0 ^ 2);
  Eq_p0 = PSId_s0 + (Xd_p - Xd_s) * id0;
  PSI1_d0 = PSId_s0 - (Xd_s - Xl) * id0;
  Ed_p0 = (-PSIq_s0) - (Xq_p - Xq_s) * iq0;
  PSI2_q0 = (-PSIq_s0) + (Xq_s - Xl) * iq0;
  SPEED0 = ws;
  // Initialization of the states
  //  der(Eq_p) = 0;
  //  der(PSI1_d) = 0;
  //  der(Ed_p) = 0;
  //  der(PSI2_q) = 0;
  //  der(SLIP) = 0;
  //  der(ANGLE) = 0;
  ANGLE = ANGLE0;
  SLIP = 0;
  Eq_p = Eq_p0;
  PSI1_d = PSI1_d0;
  Ed_p = Ed_p0;
  PSI2_q = PSI2_q0;
equation
  TRIPI = integer(TRIP);
  when TRIPI == 1 then
    reinit(SLIP, 0);
    reinit(Eq_p, 0);
    reinit(PSI1_d, 0);
    reinit(Ed_p, 0);
    reinit(PSI2_q, 0);
    reinit(ANGLE, 0);
  end when;
  PMECH1 = if TRIPI == 0 then PMECH else 0;
  EFD1 = if TRIPI == 0 then EFD else 0;
  // derivatives
  if TRIPI == 0 then
    der(Eq_p) = (EFD1 - IFD) / Tdo_p;
    der(PSI1_d) = ((-PSI1_d) + Eq_p - (Xd_p - Xl) * id) / Tdo_s;
    der(Ed_p) = ((-Ed_p) + (Xq - Xq_p) * (iq - (Xq_p - Xq_s) / (Xq_p - Xl) ^ 2 * ((-PSI2_q) + (Xq_p - Xl) * iq + Ed_p)) + PSIq_s * ((Xq - Xl) / (Xd - Xl)) * dIFD) / Tqo_p;
    der(PSI2_q) = ((-PSI2_q) + Ed_p + (Xq_p - Xl) * iq) / Tqo_s;
    der(SLIP) = ((PMECH1 - D * SLIP) / (1 + SLIP) - TELEC) / (2 * H);
    der(ANGLE) = ws * SLIP;
  else
    der(Eq_p) = 0;
    der(PSI1_d) = 0;
    der(Ed_p) = 0;
    der(PSI2_q) = 0;
    der(SLIP) = 0;
    der(ANGLE) = 0;
  end if;
  // algebraic equations
  PSId_s = (Xd_s - Xl) / (Xd_p - Xl) * Eq_p + (Xd_p - Xd_s) / (Xd_p - Xl) * PSI1_d;
  PSIq_s = -((Xq_s - Xl) / (Xq_p - Xl) * Ed_p + (Xq_p - Xq_s) / (Xq_p - Xl) * PSI2_q);
  is_d = 1 / ZSOURCE_SQR * (ZSOURCE_IM * PSId_s - ZSOURCE_RE * PSIq_s);
  is_q = 1 / ZSOURCE_SQR * (ZSOURCE_RE * PSId_s + ZSOURCE_IM * PSIq_s);
  is_r = sin(ANGLE) * is_d + cos(ANGLE) * is_q;
  is_i = (-cos(ANGLE) * is_d) + sin(ANGLE) * is_q;
  p.ir = if TRIPI == 0 then is_r - (p.vr * ZSOURCE_RE + p.vi * ZSOURCE_IM) / ZSOURCE_SQR else 0;
  p.ii = if TRIPI == 0 then is_i - (p.vi * ZSOURCE_RE - p.vr * ZSOURCE_IM) / ZSOURCE_SQR else 0;
  id = sin(ANGLE) * p.ir - cos(ANGLE) * p.ii;
  iq = cos(ANGLE) * p.ir + sin(ANGLE) * p.ii;
  PSI_d = PSId_s - Xd_s * id;
  PSI_q = PSIq_s - Xq_s * iq;
  TELEC = PSI_d * iq - PSI_q * id;
  PSI_s = (PSId_s ^ 2 + PSIq_s ^ 2) ^ 0.5;
  dIFD = sat_q(PSI_s, 1, 1.2, S1, S12);
  IFD = Eq_p + (Xd - Xd_p) * (id - (Xd_p - Xd_s) / (Xd_p - Xl) ^ 2 * (PSI1_d + (Xd_p - Xl) * id - Eq_p)) + PSId_s * dIFD;
  // arbitrary Outputs
  ETERM = (p.vi ^ 2 + p.vr ^ 2) ^ 0.5;
  ETERM_ang = atan2(p.vi, p.vr);
  PELEC = p.vr * p.ir + p.vi * p.ii;
  QELEC = p.vi * p.ir - p.vr * p.ii;
  SLIP = (SPEED - ws) / ws;
  ETERM0 = Vt_abs;
  EFD0 = EFD_0;
  PMECH0 = PMECH_0;
  ITERM_mag = (p.ir ^ 2 + p.ii ^ 2) ^ 0.5;
  ITERM_ang = atan2(p.ii, p.ir);
  ETERM_ang0 = atan2(vi0, vr0);
  ITERM_ang0 = ang_I;
  // VSI connection
  VSI[1] = SLIP "rotor speed deviation (pu)";
  VSI[2] = SLIP / 2 / pi "bus frequency deviation (pu)";
  VSI[3] = PELEC "generator electrical power on MBASE base (pu)";
  VSI[4] = PMECH1 - TELEC "generator accelerating power (pu)";
  VSI[5] = ETERM "bus voltage (pu)";
  VSI[6] = 0 "derivative of pu bus voltage";
  //der(ETERM);
  // EX_OUT connection
//   EX_OUT[1] = ETERM;
//   EX_OUT[2] = ETERM_ang;
//   EX_OUT[3] = ITERM_mag;
//   EX_OUT[4] = ITERM_ang;
//   EX_OUT[5] = ETERM0;
//   EX_OUT[6] = ETERM_ang0;
//   EX_OUT[7] = It_abs0 "ITERM_mag0";
//   EX_OUT[8] = ITERM_ang0;
  annotation(experiment(StartTime = 0, StopTime = 10, Tolerance = 1e-06, Interval = 0.02), Documentation(info = "<html>

<p>
GENROU is a model for a round rotor generator that represents the subtransient effects.
</p>

<img src=\"modelica://OpalRT/resource/Electrical/GENROU.png\"


</html>"),
   Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1})));
end GENROU;

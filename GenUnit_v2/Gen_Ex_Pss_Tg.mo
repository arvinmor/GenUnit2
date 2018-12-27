within GenUnit_v2;
class Gen_Ex_Pss_Tg
  replaceable OpalRT_v2.Electrical.Exciter.noExciter    exciter if gen_en and
    ex_en
    constrainedby OpalRT_v2.Electrical.PartialModel.Exciter     annotation(Placement(visible = true, transformation(origin = {-40, 30}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  replaceable OpalRT_v2.Electrical.Generator.GENSAL       generator(ex_en=ex_en,
      tg_en=tg_en) if                                                  gen_en
    constrainedby OpalRT_v2.Electrical.PartialModel.Generator       annotation(Placement(visible = true, transformation(origin = {40, 0}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  replaceable OpalRT_v2.Electrical.TurbineGovernor.noTurbineGovernor
                                                                turbinegovernor if
    gen_en and tg_en
    constrainedby OpalRT_v2.Electrical.PartialModel.TurbineGovernor             annotation(Placement(visible = true, transformation(origin = {-40, -30}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
  input
  OpalRT_v2.Connector.InterfacePin TRIP if gen_en
                                        annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=-90,
        origin={40,46})));
  input
  OpalRT_v2.Connector.InterfacePin dVREF if gen_en and ex_en
                                         annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-113,16})));
  Modelica.Blocks.Math.Add add if gen_en and ex_en
    annotation (Placement(transformation(extent={{-91,10},{-80,21}})));
  input
  OpalRT_v2.Connector.InterfacePin dGREF if gen_en and tg_en
                                         annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-113,-41})));
  Modelica.Blocks.Math.Add add1 if gen_en and tg_en
    annotation (Placement(transformation(extent={{-92,-50},{-81,-39}})));
  OpalRT_v2.Connector.PIN2INOUT pIN2INOUT if gen_en
    annotation (Placement(transformation(extent={{118,-23},{149,8}})));
  input OpalRT_v2.Connector.InterfacePin bus0_vr if gen_en
                                                 annotation (Placement(
        transformation(
        extent={{-4.5,-4.5},{4.5,4.5}},
        rotation=0,
        origin={89.5,3.5})));
  input OpalRT_v2.Connector.InterfacePin bus0_vi if gen_en
                                                 annotation (Placement(
        transformation(
        extent={{-4.5,-4.5},{4.5,4.5}},
        rotation=0,
        origin={89.5,-10.5})));
  output OpalRT_v2.Connector.InterfacePin bus0_ir if gen_en
                                                  annotation (Placement(
        transformation(
        extent={{-4.5,-4.5},{4.5,4.5}},
        rotation=0,
        origin={160.5,-0.5})));
  output OpalRT_v2.Connector.InterfacePin bus0_ii if gen_en
                                                  annotation (Placement(
        transformation(
        extent={{-4.5,-4.5},{4.5,4.5}},
        rotation=0,
        origin={160.5,-13.5})));
  replaceable OpalRT_v2.Electrical.PowerSystemStabilizer.noPSS PSS if gen_en
     and ex_en and pss_en
    constrainedby OpalRT_v2.Electrical.PartialModel.PowerSystemStabilizer
    annotation (Placement(transformation(extent={{-110,31},{-90,50}})));
    parameter Boolean gen_en = true;
    parameter Boolean ex_en = true;
    parameter Boolean tg_en = true;
    parameter Boolean pss_en = true;

equation
  connect(turbinegovernor.SPEED, generator.ETERM) annotation(Line(points={{-65,-10},
          {-131,-10},{-131,-68.6543},{72.2716,-68.6543},{72.2716,-7},{65,-7}},                                                                                                                                      color = {0, 0, 127}));
  connect(turbinegovernor.PMECH0, generator.PMECH0) annotation(Line(points={{-15,-50},
          {-1.48148,-50},{-1.48148,-13.7531},{15,-13.7531},{15,-14}},                                                                                                     color = {0, 0, 127}));
  connect(turbinegovernor.PMECH, generator.PMECH) annotation(Line(points={{-15,-45},
          {-5.95062,-45},{-5.95062,-8.0617},{15,-8.0617},{15,-8.5}},                                                                                                      color = {0, 0, 127}));
  connect(generator.SLIP, exciter.ETERM) annotation (Line(points={{65,20},{72.5185,
          20},{72.5185,66},{-73,66},{-73,49.3827},{-65,49.3827},{-65,50}},
        color={0,0,127}));
  connect(generator.TRIP, TRIP)
    annotation (Line(points={{40,25},{40,46}}, color={0,0,127}));
  connect(add.y, exciter.VREF) annotation (Line(points={{-79.45,15.5},{-65,
          15.5},{-65,15}}, color={0,0,127}));
  connect(exciter.VREF0, add.u2) annotation (Line(points={{-65,10},{-79,10},
          {-79,6},{-92.1,6},{-92.1,12.2}}, color={0,0,127}));
  connect(dVREF, add.u1) annotation (Line(points={{-113,16},{-92.1,16},{
          -92.1,18.8}}, color={0,0,0}));
  connect(turbinegovernor.GREF, add1.y) annotation (Line(points={{-65,-45},
          {-72,-45},{-72,-44.5},{-80.45,-44.5}}, color={0,0,127}));
  connect(add1.u1, dGREF) annotation (Line(points={{-93.1,-41.2},{-101.55,
          -41.2},{-101.55,-41},{-113,-41}}, color={0,0,127}));
  connect(turbinegovernor.GREF0, add1.u2) annotation (Line(points={{-65,-50},
          {-78,-50},{-78,-52},{-93.1,-52},{-93.1,-47.8}}, color={0,0,127}));
  connect(generator.p, pIN2INOUT.p) annotation (Line(points={{65,-20},{70,-20},{
          70,-19.9},{118,-19.9}}, color={0,0,0}));
  connect(bus0_vr, pIN2INOUT.vr) annotation (Line(points={{89.5,3.5},{108,3.5},{
          108,4.59},{118,4.59}}, color={0,0,0}));
  connect(bus0_vi, pIN2INOUT.vi) annotation (Line(points={{89.5,-10.5},{117.69,-10.5},
          {117.69,-7.19}}, color={0,0,0}));
  connect(pIN2INOUT.ir, bus0_ir) annotation (Line(points={{149.31,-0.68},{153.155,
          -0.68},{153.155,-0.5},{160.5,-0.5}}, color={0,0,127}));
  connect(pIN2INOUT.ii, bus0_ii) annotation (Line(points={{149.31,-13.7},{153.155,
          -13.7},{153.155,-13.5},{160.5,-13.5}}, color={0,0,127}));
  connect(PSS.VOTHSG, exciter.VOTHSG) annotation (Line(points={{-89.8,34.8},{
          -78.36,34.8},{-78.36,35},{-65,35}}, color={0,0,127}));
  connect(exciter.EFD, generator.EFD)
    annotation (Line(points={{-15,15},{15,15},{15,12}}, color={0,0,127}));
  connect(exciter.EFD0, generator.EFD0) annotation (Line(points={{-15,10},{-5,10},
          {-5,5},{14.5,5}},          color={0,0,127}));
  connect(generator.ETERM0, exciter.ETERM0) annotation (Line(points={{14.5,20.5},
          {0,20.5},{0,45},{-16,45}}, color={0,0,127}));
  connect(generator.IFD, exciter.IFD) annotation (Line(points={{65,8},{80,8},{80,
          70},{-77,70},{-77,42.5},{-65,42.5}}, color={0,0,127}));
  connect(generator.VSI, PSS.VSI) annotation (Line(points={{40,-26},{40,-77},{-135,
          -77},{-135,34.8},{-110,34.8}}, color={0,0,127}));
  annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1})));
end Gen_Ex_Pss_Tg;

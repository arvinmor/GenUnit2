package GenUnit_v2
  package Architecture
    partial model Gen_Ex_Tg
      replaceable OpalRT_v2.Electrical.PartialModel.Exciter exciter annotation(Placement(visible = true, transformation(origin = {-40, 30}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
      replaceable OpalRT_v2.Electrical.PartialModel.Generator generator annotation(Placement(visible = true, transformation(origin = {40, 0}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
      replaceable OpalRT_v2.Electrical.PartialModel.TurbineGovernor turbinegovernor annotation(Placement(visible = true, transformation(origin = {-40, -30}, extent = {{-25, -25}, {25, 25}}, rotation = 0)));
      OpalRT_v2.Connector.PwPin bus0
        annotation (Placement(transformation(extent={{91,-30},{111,-10}})));
      OpalRT_v2.Connector.InterfacePin TRIP annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=-90,
            origin={40,46})));
      OpalRT_v2.Connector.InterfacePin dVREF annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={-113,16})));
      Modelica.Blocks.Math.Add add
        annotation (Placement(transformation(extent={{-91,10},{-80,21}})));
      OpalRT_v2.Connector.InterfacePin dGREF annotation (Placement(
            transformation(
            extent={{-10,-10},{10,10}},
            rotation=0,
            origin={-113,-41})));
      Modelica.Blocks.Math.Add add1
        annotation (Placement(transformation(extent={{-92,-50},{-81,-39}})));
      Modelica.Blocks.Sources.Constant const(k=0)
        annotation (Placement(transformation(extent={{-123,38},{-103,58}})));
    equation
      connect(turbinegovernor.SPEED, generator.ETERM) annotation(Line(points={{-65,-10},
              {-75.0617,-10},{-75.0617,-67.6543},{78.2716,-67.6543},{78.2716,
              0.740741},{65,0.740741},{65,0}},                                                                                                                                                                          color = {0, 0, 127}));
      connect(turbinegovernor.PMECH0, generator.PMECH0) annotation(Line(points={{-15,-50},
              {-1.48148,-50},{-1.48148,-19.7531},{15,-19.7531},{15,-20}},                                                                                                     color = {0, 0, 127}));
      connect(turbinegovernor.PMECH, generator.PMECH) annotation(Line(points={{-15,-45},
              {-3.95062,-45},{-3.95062,-15.0617},{15,-15.0617},{15,-15}},                                                                                                     color = {0, 0, 127}));
      connect(generator.SPEED, exciter.ETERM) annotation(Line(points={{65,15},{
              78.5185,15},{78.5185,66.1728},{-72.0988,66.1728},{-72.0988,
              49.3827},{-65,49.3827},{-65,50}},                                                                                                                                                         color = {0, 0, 127}));
      connect(exciter.EFD0, generator.EFD0) annotation(Line(points={{-15,10},{
              15.0617,10},{15.0617,10},{15,10}},                                                                                         color = {0, 0, 127}));
      connect(exciter.EFD, generator.EFD) annotation(Line(points={{-15,15},{
              13.5802,15},{13.5802,15},{15,15}},                                                                                       color = {0, 0, 127}));
      connect(generator.p, bus0)
        annotation (Line(points={{65,-20},{101,-20}}, color={0,0,0}));
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
      connect(exciter.VOTHSG, const.y) annotation (Line(points={{-65,35},{-85,
              35},{-85,48},{-102,48}}, color={0,0,127}));
      annotation(Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {1, 1})));
    end Gen_Ex_Tg;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})));
  end Architecture;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2, 2})),
    uses(Modelica(version="3.2.2")));
end GenUnit_v2;

within ModelicaByExample.ArrayEquations.StateSpace.Examples;
model RotationalSMD_Concat
  "State space version of a rotationals spring-mass-damper system using concatenation"
  parameter Real J1=0.4;
  parameter Real J2=1.0;
  parameter Real k1=11;
  parameter Real k2=5;
  parameter Real d1=0.2;
  parameter Real d2=1.0;
  parameter Real S[2,2] = [-1/J1, 1/J1; 1/J2, -1/J2];
  extends LTI_DRY(x0={0, 1, 0, 0},
                  A=[zeros(2, 2), identity(2);
                     k1*S+[0,0;0,-k2/J2], d1*S+[0,0;0,-d2/J2]],
                  B=fill(0, 4, 0), C=fill(0, 0, 4),
                  D=fill(0, 0, 0));
equation
  /*
  omega1 = der(phi1);
  omega2 = der(phi2);
  J1*der(omega1) = k1*(phi2-phi1)+d1*der(phi2-phi1);
  J2*der(omega2) = k1*(phi1-phi2)+d1*der(phi1-phi2)-k2*phi2-d1*der(phi2);
  */
  u = fill(0, 0);
end RotationalSMD_Concat;
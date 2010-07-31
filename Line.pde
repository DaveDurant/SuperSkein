// Line Class
// Once we have the slices as 2D lines,
// we never look back.
// From this version (1.3ish?) Line2D will
// have both SPEED and PLASTIC FLOW RATE.
class Line2D {
  
  float x1,y1,x2,y2;
  
  float HeadSpeed;
  float Flowrate;
  
  Line2D(float nx1, float ny1, float nx2, float ny2) {
    x1=nx1;
    x2=nx2;
    y1=ny1;
    y2=ny2;
    HeadSpeed = 1000; //By default it at least does move.
    Flowrate = 0; //By default the plastic does not flow.
  }
  
  void Scale(float Factor)
  {
    x1=x1*Factor;
    x2=x2*Factor;
    y1=y1*Factor;
    y2=y2*Factor;
  }

  void Flip()
  {
    float xn, yn;
    xn = x1;
    yn = y1;
    x1 = x2;
    y1 = y2;
    x2 = xn;
    y2 = yn;
  }
  
  void Rotate(float Angle)
  {
    float xn,yn;
    xn = x1*cos(Angle) - y1*sin(Angle);
    yn = x1*sin(Angle) + y1*cos(Angle);
    x1 = xn;
    y1 = yn;
    xn = x2*cos(Angle) - y2*sin(Angle);
    yn = x2*sin(Angle) + y2*cos(Angle);
    x2 = xn;
    y2 = yn;
  }
}  
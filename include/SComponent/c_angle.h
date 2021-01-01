#ifndef __C_ANGLE_H_
#define __C_ANGLE_H_

#include "global.h"
#include "SComponent/c_xyz.h"

class cSAngle {
private:
    s16 angle;
public:
    cSAngle(const cSAngle&);
    cSAngle(s16);
    cSAngle(float);
    void Val(const cSAngle&);
    void Val(s16);
    void Val(float);
    float Degree(void) const;
    float Radian(void) const;
    float Norm(void) const;
    s16 Abs(void) const;
    s16 Inv(void) const;
    float Sin(void) const;
    float Cos(void) const;
    cSAngle operator-(void) const;
    cSAngle operator+(const cSAngle&) const;
    cSAngle operator-(const cSAngle&) const;
    void operator+=(const cSAngle&);
    void operator-=(const cSAngle&);
    cSAngle operator+(short) const;
    cSAngle operator-(short) const;
    void operator+=(short);
    cSAngle operator*(float) const;
    void operator*=(float);
};

cSAngle operator+(short, const cSAngle&);
cSAngle operator-(short, const cSAngle&);

class cDegree {
public:
    cDegree(float);
    s16 Formal(void);
    void Val(float);
    float Radian(void) const;
    float Sin(void) const;
    float Cos(void) const;
    float Tan(void) const;
};

class cSPolar {
public:
    cSPolar(const cXyz&);
    cSPolar& Formal(void);
    void Val(float, short, short);
    void Val(const cXyz&);
    cXyz Xyz(void) const;
    void Globe(class cSGlobe*) const;
};

class cSGlobe {
public:
    cSGlobe(const cSGlobe&);
    cSGlobe(float, short, short);
    cSGlobe(float, const cSAngle&, const cSAngle&);
    cSGlobe(const cXyz&);
    void Formal(void);
    void Val(const cSGlobe&);
    void Val(float, short, short);
    void Val(float, const cSAngle&, const cSAngle&);
    void Val(const cXyz&);
    cXyz Xyz(void) const;
    void Polar(cSPolar*) const;
    void Norm(void) const;
    void Invert(void);
};


#endif
#ifndef __C_M3D_H_
#define __C_M3D_H_

#include "SComponent/c_m3d_g_aab.h"
#include "SComponent/c_m3d_g_cps.h"
#include "SComponent/c_m3d_g_cyl.h"
#include "SComponent/c_m3d_g_lin.h"
#include "SComponent/c_m3d_g_pla.h"
#include "SComponent/c_m3d_g_tri.h"
#include "SComponent/c_sxyz.h"
#include "SComponent/c_xyz.h"
#include "global.h"

struct cM3d_Range;

void cM3d_InDivPos1(const Vec*, const Vec*, float, Vec*);
void cM3d_InDivPos2(const Vec*, const Vec*, float, Vec*);
float cM3d_Len2dSq(float, float, float, float);
bool cM3d_Len2dSqPntAndSegLine(float, float, float, float, float, float, float*, float*, float*);
bool cM3d_Len3dSqPntAndSegLine(const cM3dGLin*, const Vec*, Vec*, float*);
float cM3d_SignedLenPlaAndPos(const cM3dGPla*, const Vec*);
float cM3d_VectorProduct2d(float, float, float, float, float, float);
void cM3d_VectorProduct(const cXyz*, const cXyz*, const cXyz*, cXyz*);
void cM3d_CalcPla(const Vec*, const Vec*, const Vec*, Vec*, float*);
bool cM3d_Cross_AabAab(const cM3dGAab*, const cM3dGAab*);
bool cM3d_Cross_AabCyl(const cM3dGAab*, const cM3dGCyl*);
bool cM3d_Cross_AabSph(const cM3dGAab*, const cM3dGSph*);
int cM3d_Check_LinLin(const cM3dGLin*, const cM3dGLin*, float*, float*);
bool cM3d_CrossInfLineVsInfPlane_proc(float, float, const Vec*, const Vec*, Vec*);
bool cM3d_Cross_LinPla(const cM3dGLin*, const cM3dGPla*, Vec*, bool, bool);
bool cM3d_Cross_MinMaxBoxLine(const Vec*, const Vec*, const Vec*, const Vec*);
bool cM3d_InclusionCheckPosIn3PosBox3d(const Vec*, const Vec*, const Vec*, const Vec*, float);
bool cM3d_InclusionCheckPosIn3PosBox2d(float, float, float, float, float, float, float, float,
                                       float);
bool cM3d_CrossX_Tri(const cM3dGTri*, const Vec*, float);
bool cM3d_CrossX_Tri(const cM3dGTri*, const Vec*);
bool cM3d_CrossX_LinTri_proc(const cM3dGTri*, const Vec*);
bool cM3d_CrossY_Tri(const cM3dGTri*, const Vec*);
bool cM3d_CrossY_LinTri_proc(const cM3dGTri*, const Vec*);
bool cM3d_CrossY_Tri(const Vec&, const Vec&, const Vec&, const cM3dGPla&, const Vec*);
bool cM3d_CrossY_Tri_Front(const Vec&, const Vec&, const Vec&, const Vec*);
bool cM3d_CrossY_Tri(const cM3dGTri*, const Vec*, float*);
bool cM3d_CrossY_Tri(const cM3dGTri*, const Vec*, float);
bool cM3d_CrossY_Tri(const cM3dGTri*, const Vec*, const cM3d_Range*, float*);
bool cM3d_CrossZ_Tri(const cM3dGTri*, const Vec*, float);
bool cM3d_CrossZ_Tri(const cM3dGTri*, const Vec*);
bool cM3d_CrossZ_LinTri_proc(const cM3dGTri*, const Vec*);
bool cM3d_Cross_LinTri(const cM3dGLin*, const cM3dGTri*, Vec*, bool, bool);
bool cM3d_Cross_LinTri_Easy(const cM3dGTri*, const Vec*);
bool cM3d_Cross_SphPnt(const cM3dGSph*, const Vec*);
bool cM3d_Cross_LinSph(const cM3dGLin*, const cM3dGSph*, Vec*);
int cM3d_Cross_LinSph_CrossPos(const cM3dGSph&, const cM3dGLin&, Vec*, Vec*);
bool cM3d_Cross_CylSph(const cM3dGCyl*, const cM3dGSph*, float*);
bool cM3d_Cross_CylSph(const cM3dGCyl*, const cM3dGSph*, Vec*, float*);
bool cM3d_Cross_SphSph(const cM3dGSph*, const cM3dGSph*, float*);
bool cM3d_Cross_SphSph(const cM3dGSph*, const cM3dGSph*, float*, float*);
bool cM3d_Cross_SphSph(const cM3dGSph*, const cM3dGSph*, Vec*);
void cM3d_CalcSphVsTriCrossPoint(const cM3dGSph*, const cM3dGTri*, Vec*);
bool cM3d_Cross_SphTri(const cM3dGSph*, const cM3dGTri*, Vec*);
bool cM3d_Cross_CylCyl(const cM3dGCyl*, const cM3dGCyl*, float*);
bool cM3d_Cross_CylCyl(const cM3dGCyl*, const cM3dGCyl*, Vec*);
bool cM3d_Cross_CylTri(const cM3dGCyl*, const cM3dGTri*, Vec*);
int cM3d_Cross_CylLin(const cM3dGCyl*, const cM3dGLin*, Vec*, Vec*);
int cM3d_Cross_CylPntPnt(const cM3dGCyl*, const Vec*, const Vec*, Vec*, Vec*);
bool cM3d_Cross_CylPnt(const cM3dGCyl*, const Vec*);
bool cM3d_Cross_CpsCps(const cM3dGCps&, const cM3dGCps&, Vec*);
bool cM3d_Cross_CpsCyl(const cM3dGCps&, const cM3dGCyl&, Vec*);
bool cM3d_Cross_CpsSph_CrossPos(const cM3dGCps&, const cM3dGSph&, const Vec&, Vec*);
bool cM3d_Cross_CpsSph(const cM3dGCps&, const cM3dGSph&, Vec*);
bool cM3d_Cross_TriTri(const cM3dGTri&, const cM3dGTri&, Vec*);
bool cM3d_Cross_CpsTri(const cM3dGCps&, cM3dGTri, Vec*);
void cM3d_CalcVecAngle(const Vec&, short*, short*);
void cM3d_CalcVecZAngle(const Vec&, csXyz*);
void cM3d_PlaneCrossLineProcWork(float, float, float, float, float, float, float, float*, float*);
int cM3d_2PlaneCrossLine(const cM3dGPla&, const cM3dGPla&, cM3dGLin*);
bool cM3d_3PlaneCrossPos(const cM3dGPla&, const cM3dGPla&, const cM3dGPla&, Vec*);
float cM3d_lineVsPosSuisenCross(const cM3dGLin*, const Vec*, Vec*);
float cM3d_lineVsPosSuisenCross(const Vec&, const Vec&, const Vec&, Vec*);
int cM3d_2PlaneLinePosNearPos(const cM3dGPla&, const cM3dGPla&, const Vec*, Vec*);
void cM3d_CrawVec(const Vec&, const Vec&, Vec*);

#endif
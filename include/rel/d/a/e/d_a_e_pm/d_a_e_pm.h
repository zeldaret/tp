#ifndef D_A_E_PM_H
#define D_A_E_PM_H


class daE_PM_c : public fopEn_enemy_c {
public:
    /* 80741FB4 */ void DemoSkip(int);
    /* 80742004 */ void DemoSkipCallBack(void*, int);
    /* 80742038 */ void CreateHeap();
    /* 80742448 */ void initCcCylinder();
    /* 807424C0 */ void setCcCylinder();
    /* 80742508 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80742600 */ void Particle_Set(u16, cXyz);
    /* 80742674 */ void SetAnm(int, int, f32, f32);
    /* 80742810 */ void Yazirushi();
    /* 807428A8 */ void SearchRndP();
    /* 80742958 */ void SearchFarP();
    /* 80742C94 */ void SearchNearP();
    /* 80742E1C */ void SearchNextPos();
    /* 80742FB4 */ void SetGakkiEffect();
    /* 807430C4 */ void CameraSet();
    /* 80743210 */ void SetStopingCam();
    /* 80743294 */ void SetStopCam(cXyz, f32, f32, s16);
    /* 807433E8 */ void SetMoveCam2(f32, f32);
    /* 80743524 */ void SetMoveCam(f32, f32);
    /* 80743600 */ void SetReleaseCam();
    /* 807436A4 */ void Ap_StartAction();
    /* 80743D8C */ void Ap_CreateAction();
    /* 807444F0 */ void Ap_EscapeAction();
    /* 80744790 */ void AppearAction();
    /* 80744878 */ void DemoBeforeEscape();
    /* 80744DA0 */ void DemoAfterEscape();
    /* 807453F4 */ void DemoMoveAction();
    /* 80745438 */ void WaitAction();
    /* 807455F4 */ void GroundCheck();
    /* 80745970 */ void EscapeAction();
    /* 80745C44 */ void DeathAction();
    /* 80745DBC */ void Action();
    /* 80745ED0 */ void DemoBossStart2();
    /* 80746624 */ void DemoBossStart();
    /* 80747194 */ void BossEscapeAction();
    /* 807476A0 */ void BossDamageAction();
    /* 80747F38 */ void BossWaitAction();
    /* 807480A4 */ void BossDeathAction();
    /* 80748964 */ void BossAction();
    /* 80748B18 */ void Execute();
    /* 80748D74 */ void StartAction();
    /* 8074954C */ void GakkiLoopAction(cXyz, f32);
    /* 807499C0 */ void DemoCreateAction();
    /* 80749C0C */ void CreateAction();
    /* 80749D9C */ void CreateChk();
    /* 80749ED0 */ void LampAction();
    /* 8074A14C */ void DamageAction();
    /* 8074A210 */ void At_Check();
    /* 8074A3DC */ void ObjHit();
    /* 8074A644 */ void EyeMove();
    /* 8074A6CC */ void Draw();
    /* 8074AAC0 */ void Delete();
    /* 8074AB28 */ void setBaseMtx();
    /* 8074ABA8 */ void setGakkiBaseMtx();
    /* 8074AC10 */ void setLampBaseMtx();
    /* 8074AEF8 */ void SkipChk();
    /* 8074B4DC */ void Create();

    void AppearSet() { mAppear = true; }

    /* 0x5AC */ u8 field_0x5ac[0x619 - 0x5AC];
    /* 0x619 */ bool mAppear;
};

#endif /* D_A_E_PM_H */

lbl_8009258C:
/* 8009258C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80092590  7C 08 02 A6 */	mflr r0
/* 80092594  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80092598  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8009259C  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 800925A0  39 61 00 C0 */	addi r11, r1, 0xc0
/* 800925A4  48 2C FC 39 */	bl _savegpr_29
/* 800925A8  7C 7E 1B 78 */	mr r30, r3
/* 800925AC  3B FE 03 E8 */	addi r31, r30, 0x3e8
/* 800925B0  38 A1 00 7C */	addi r5, r1, 0x7c
/* 800925B4  3C 60 80 38 */	lis r3, lit_8840@ha /* 0x8037A884@ha */
/* 800925B8  38 63 A8 84 */	addi r3, r3, lit_8840@l /* 0x8037A884@l */
/* 800925BC  38 83 FF FC */	addi r4, r3, -4
/* 800925C0  38 00 00 03 */	li r0, 3
/* 800925C4  7C 09 03 A6 */	mtctr r0
lbl_800925C8:
/* 800925C8  80 64 00 04 */	lwz r3, 4(r4)
/* 800925CC  84 04 00 08 */	lwzu r0, 8(r4)
/* 800925D0  90 65 00 04 */	stw r3, 4(r5)
/* 800925D4  94 05 00 08 */	stwu r0, 8(r5)
/* 800925D8  42 00 FF F0 */	bdnz lbl_800925C8
/* 800925DC  80 1E 01 74 */	lwz r0, 0x174(r30)
/* 800925E0  28 00 00 00 */	cmplwi r0, 0
/* 800925E4  40 82 01 B0 */	bne lbl_80092794
/* 800925E8  7F C3 F3 78 */	mr r3, r30
/* 800925EC  38 9F 00 04 */	addi r4, r31, 4
/* 800925F0  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 800925F4  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 800925F8  38 A5 01 80 */	addi r5, r5, 0x180
/* 800925FC  38 C0 00 00 */	li r6, 0
/* 80092600  4B FF 6A 8D */	bl getEvIntData__9dCamera_cFPiPci
/* 80092604  7F C3 F3 78 */	mr r3, r30
/* 80092608  7F E4 FB 78 */	mr r4, r31
/* 8009260C  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 80092610  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 80092614  38 C0 00 01 */	li r6, 1
/* 80092618  4B FF 6A 75 */	bl getEvIntData__9dCamera_cFPiPci
/* 8009261C  7F C3 F3 78 */	mr r3, r30
/* 80092620  38 9F 00 08 */	addi r4, r31, 8
/* 80092624  3C A0 80 38 */	lis r5, d_d_ev_camera__stringBase0@ha /* 0x8037AAF4@ha */
/* 80092628  38 A5 AA F4 */	addi r5, r5, d_d_ev_camera__stringBase0@l /* 0x8037AAF4@l */
/* 8009262C  38 A5 01 7B */	addi r5, r5, 0x17b
/* 80092630  81 1F 00 00 */	lwz r8, 0(r31)
/* 80092634  38 00 00 0A */	li r0, 0xa
/* 80092638  7D 07 FE 70 */	srawi r7, r8, 0x1f
/* 8009263C  54 06 0F FE */	srwi r6, r0, 0x1f
/* 80092640  7C 00 40 10 */	subfc r0, r0, r8
/* 80092644  7C C7 31 14 */	adde r6, r7, r6
/* 80092648  4B FF 6A 45 */	bl getEvIntData__9dCamera_cFPiPci
/* 8009264C  80 1F 00 08 */	lwz r0, 8(r31)
/* 80092650  2C 00 00 01 */	cmpwi r0, 1
/* 80092654  40 81 00 0C */	ble lbl_80092660
/* 80092658  38 00 00 01 */	li r0, 1
/* 8009265C  90 1F 00 08 */	stw r0, 8(r31)
lbl_80092660:
/* 80092660  80 1F 00 08 */	lwz r0, 8(r31)
/* 80092664  2C 00 00 00 */	cmpwi r0, 0
/* 80092668  41 82 00 20 */	beq lbl_80092688
/* 8009266C  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80092670  38 80 00 04 */	li r4, 4
/* 80092674  80 BF 00 00 */	lwz r5, 0(r31)
/* 80092678  38 A5 00 01 */	addi r5, r5, 1
/* 8009267C  48 00 51 FD */	bl Init__14d2DBSplinePathFll
/* 80092680  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 80092684  48 00 52 81 */	bl Step__14d2DBSplinePathFv
lbl_80092688:
/* 80092688  80 1F 00 04 */	lwz r0, 4(r31)
/* 8009268C  2C 00 00 09 */	cmpwi r0, 9
/* 80092690  40 82 00 5C */	bne lbl_800926EC
/* 80092694  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80092698  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8009269C  C0 04 5D 8C */	lfs f0, 0x5d8c(r4)
/* 800926A0  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 800926A4  C0 04 5D 90 */	lfs f0, 0x5d90(r4)
/* 800926A8  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 800926AC  C0 04 5D 94 */	lfs f0, 0x5d94(r4)
/* 800926B0  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 800926B4  C0 04 5D 98 */	lfs f0, 0x5d98(r4)
/* 800926B8  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 800926BC  C0 04 5D 9C */	lfs f0, 0x5d9c(r4)
/* 800926C0  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 800926C4  C0 04 5D A0 */	lfs f0, 0x5da0(r4)
/* 800926C8  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 800926CC  C0 04 5D A4 */	lfs f0, 0x5da4(r4)
/* 800926D0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 800926D4  38 61 00 34 */	addi r3, r1, 0x34
/* 800926D8  A8 84 5D A8 */	lha r4, 0x5da8(r4)
/* 800926DC  48 1D E8 BD */	bl __ct__7cSAngleFs
/* 800926E0  A8 01 00 34 */	lha r0, 0x34(r1)
/* 800926E4  B0 1F 00 42 */	sth r0, 0x42(r31)
/* 800926E8  48 00 00 50 */	b lbl_80092738
lbl_800926EC:
/* 800926EC  54 03 28 34 */	slwi r3, r0, 5
/* 800926F0  38 63 00 D0 */	addi r3, r3, 0xd0
/* 800926F4  7C 7E 1A 14 */	add r3, r30, r3
/* 800926F8  C0 03 00 00 */	lfs f0, 0(r3)
/* 800926FC  D0 1F 00 28 */	stfs f0, 0x28(r31)
/* 80092700  C0 03 00 04 */	lfs f0, 4(r3)
/* 80092704  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 80092708  C0 03 00 08 */	lfs f0, 8(r3)
/* 8009270C  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 80092710  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80092714  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 80092718  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8009271C  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80092720  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80092724  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80092728  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8009272C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80092730  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 80092734  B0 1F 00 42 */	sth r0, 0x42(r31)
lbl_80092738:
/* 80092738  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 8009273C  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 80092740  C0 1E 00 68 */	lfs f0, 0x68(r30)
/* 80092744  D0 1F 00 20 */	stfs f0, 0x20(r31)
/* 80092748  C0 1E 00 6C */	lfs f0, 0x6c(r30)
/* 8009274C  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80092750  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 80092754  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80092758  A8 1E 00 60 */	lha r0, 0x60(r30)
/* 8009275C  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 80092760  A8 1E 00 62 */	lha r0, 0x62(r30)
/* 80092764  B0 1F 00 12 */	sth r0, 0x12(r31)
/* 80092768  38 61 00 74 */	addi r3, r1, 0x74
/* 8009276C  38 9F 00 34 */	addi r4, r31, 0x34
/* 80092770  38 BF 00 28 */	addi r5, r31, 0x28
/* 80092774  48 1D 43 C1 */	bl __mi__4cXyzCFRC3Vec
/* 80092778  38 7F 00 14 */	addi r3, r31, 0x14
/* 8009277C  38 81 00 74 */	addi r4, r1, 0x74
/* 80092780  48 1D F2 F1 */	bl Val__7cSGlobeFRC4cXyz
/* 80092784  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 80092788  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8009278C  A8 1E 00 7C */	lha r0, 0x7c(r30)
/* 80092790  B0 1F 00 40 */	sth r0, 0x40(r31)
lbl_80092794:
/* 80092794  80 7E 01 74 */	lwz r3, 0x174(r30)
/* 80092798  80 9F 00 00 */	lwz r4, 0(r31)
/* 8009279C  7C 03 20 40 */	cmplw r3, r4
/* 800927A0  40 80 01 E0 */	bge lbl_80092980
/* 800927A4  80 1F 00 08 */	lwz r0, 8(r31)
/* 800927A8  2C 00 00 00 */	cmpwi r0, 0
/* 800927AC  41 82 00 20 */	beq lbl_800927CC
/* 800927B0  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 800927B4  48 00 51 51 */	bl Step__14d2DBSplinePathFv
/* 800927B8  38 7E 05 D8 */	addi r3, r30, 0x5d8
/* 800927BC  38 81 00 80 */	addi r4, r1, 0x80
/* 800927C0  48 00 53 61 */	bl Calc__14d2DBSplinePathFPf
/* 800927C4  FF E0 08 90 */	fmr f31, f1
/* 800927C8  48 00 00 3C */	b lbl_80092804
lbl_800927CC:
/* 800927CC  38 03 00 01 */	addi r0, r3, 1
/* 800927D0  C8 22 8E E8 */	lfd f1, lit_5846(r2)
/* 800927D4  90 01 00 9C */	stw r0, 0x9c(r1)
/* 800927D8  3C 60 43 30 */	lis r3, 0x4330
/* 800927DC  90 61 00 98 */	stw r3, 0x98(r1)
/* 800927E0  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 800927E4  EC 40 08 28 */	fsubs f2, f0, f1
/* 800927E8  C8 22 8E F8 */	lfd f1, lit_5962(r2)
/* 800927EC  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 800927F0  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 800927F4  90 61 00 A0 */	stw r3, 0xa0(r1)
/* 800927F8  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 800927FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80092800  EF E2 00 24 */	fdivs f31, f2, f0
lbl_80092804:
/* 80092804  38 61 00 68 */	addi r3, r1, 0x68
/* 80092808  38 9F 00 28 */	addi r4, r31, 0x28
/* 8009280C  38 BF 00 1C */	addi r5, r31, 0x1c
/* 80092810  48 1D 43 25 */	bl __mi__4cXyzCFRC3Vec
/* 80092814  38 61 00 5C */	addi r3, r1, 0x5c
/* 80092818  38 81 00 68 */	addi r4, r1, 0x68
/* 8009281C  FC 20 F8 90 */	fmr f1, f31
/* 80092820  48 1D 43 65 */	bl __ml__4cXyzCFf
/* 80092824  38 61 00 50 */	addi r3, r1, 0x50
/* 80092828  38 9F 00 1C */	addi r4, r31, 0x1c
/* 8009282C  38 A1 00 5C */	addi r5, r1, 0x5c
/* 80092830  48 1D 42 B5 */	bl __pl__4cXyzCFRC3Vec
/* 80092834  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80092838  D0 1E 00 64 */	stfs f0, 0x64(r30)
/* 8009283C  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80092840  D0 1E 00 68 */	stfs f0, 0x68(r30)
/* 80092844  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80092848  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8009284C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80092850  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80092854  EC 00 08 28 */	fsubs f0, f0, f1
/* 80092858  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8009285C  EC 01 00 2A */	fadds f0, f1, f0
/* 80092860  D0 1E 00 5C */	stfs f0, 0x5c(r30)
/* 80092864  38 61 00 30 */	addi r3, r1, 0x30
/* 80092868  38 9F 00 18 */	addi r4, r31, 0x18
/* 8009286C  3B BF 00 10 */	addi r29, r31, 0x10
/* 80092870  7F A5 EB 78 */	mr r5, r29
/* 80092874  48 1D E9 31 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80092878  38 61 00 2C */	addi r3, r1, 0x2c
/* 8009287C  38 81 00 30 */	addi r4, r1, 0x30
/* 80092880  FC 20 F8 90 */	fmr f1, f31
/* 80092884  48 1D E9 E1 */	bl __ml__7cSAngleCFf
/* 80092888  38 61 00 28 */	addi r3, r1, 0x28
/* 8009288C  7F A4 EB 78 */	mr r4, r29
/* 80092890  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80092894  48 1D E8 E1 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80092898  38 61 00 0C */	addi r3, r1, 0xc
/* 8009289C  A8 81 00 28 */	lha r4, 0x28(r1)
/* 800928A0  48 1D E6 F9 */	bl __ct__7cSAngleFs
/* 800928A4  A8 01 00 0C */	lha r0, 0xc(r1)
/* 800928A8  B0 1E 00 60 */	sth r0, 0x60(r30)
/* 800928AC  38 61 00 24 */	addi r3, r1, 0x24
/* 800928B0  38 9F 00 1A */	addi r4, r31, 0x1a
/* 800928B4  3B BF 00 12 */	addi r29, r31, 0x12
/* 800928B8  7F A5 EB 78 */	mr r5, r29
/* 800928BC  48 1D E8 E9 */	bl __mi__7cSAngleCFRC7cSAngle
/* 800928C0  38 61 00 20 */	addi r3, r1, 0x20
/* 800928C4  38 81 00 24 */	addi r4, r1, 0x24
/* 800928C8  FC 20 F8 90 */	fmr f1, f31
/* 800928CC  48 1D E9 99 */	bl __ml__7cSAngleCFf
/* 800928D0  38 61 00 1C */	addi r3, r1, 0x1c
/* 800928D4  7F A4 EB 78 */	mr r4, r29
/* 800928D8  38 A1 00 20 */	addi r5, r1, 0x20
/* 800928DC  48 1D E8 99 */	bl __pl__7cSAngleCFRC7cSAngle
/* 800928E0  38 61 00 08 */	addi r3, r1, 8
/* 800928E4  A8 81 00 1C */	lha r4, 0x1c(r1)
/* 800928E8  48 1D E6 B1 */	bl __ct__7cSAngleFs
/* 800928EC  A8 01 00 08 */	lha r0, 8(r1)
/* 800928F0  B0 1E 00 62 */	sth r0, 0x62(r30)
/* 800928F4  38 61 00 44 */	addi r3, r1, 0x44
/* 800928F8  38 9E 00 5C */	addi r4, r30, 0x5c
/* 800928FC  48 1D F1 B9 */	bl Xyz__7cSGlobeCFv
/* 80092900  38 61 00 38 */	addi r3, r1, 0x38
/* 80092904  38 9E 00 64 */	addi r4, r30, 0x64
/* 80092908  38 A1 00 44 */	addi r5, r1, 0x44
/* 8009290C  48 1D 41 D9 */	bl __pl__4cXyzCFRC3Vec
/* 80092910  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80092914  D0 1E 00 70 */	stfs f0, 0x70(r30)
/* 80092918  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8009291C  D0 1E 00 74 */	stfs f0, 0x74(r30)
/* 80092920  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80092924  D0 1E 00 78 */	stfs f0, 0x78(r30)
/* 80092928  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8009292C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80092930  EC 00 08 28 */	fsubs f0, f0, f1
/* 80092934  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80092938  EC 01 00 2A */	fadds f0, f1, f0
/* 8009293C  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 80092940  38 61 00 18 */	addi r3, r1, 0x18
/* 80092944  38 9F 00 42 */	addi r4, r31, 0x42
/* 80092948  38 BF 00 40 */	addi r5, r31, 0x40
/* 8009294C  48 1D E8 59 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80092950  38 61 00 14 */	addi r3, r1, 0x14
/* 80092954  38 81 00 18 */	addi r4, r1, 0x18
/* 80092958  FC 20 F8 90 */	fmr f1, f31
/* 8009295C  48 1D E9 09 */	bl __ml__7cSAngleCFf
/* 80092960  38 61 00 10 */	addi r3, r1, 0x10
/* 80092964  38 9F 00 40 */	addi r4, r31, 0x40
/* 80092968  38 A1 00 14 */	addi r5, r1, 0x14
/* 8009296C  48 1D E8 09 */	bl __pl__7cSAngleCFRC7cSAngle
/* 80092970  A8 01 00 10 */	lha r0, 0x10(r1)
/* 80092974  B0 1E 00 7C */	sth r0, 0x7c(r30)
/* 80092978  38 60 00 00 */	li r3, 0
/* 8009297C  48 00 00 10 */	b lbl_8009298C
lbl_80092980:
/* 80092980  38 00 00 01 */	li r0, 1
/* 80092984  98 1E 01 58 */	stb r0, 0x158(r30)
/* 80092988  38 60 00 01 */	li r3, 1
lbl_8009298C:
/* 8009298C  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80092990  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 80092994  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80092998  48 2C F8 91 */	bl _restgpr_29
/* 8009299C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 800929A0  7C 08 03 A6 */	mtlr r0
/* 800929A4  38 21 00 D0 */	addi r1, r1, 0xd0
/* 800929A8  4E 80 00 20 */	blr 

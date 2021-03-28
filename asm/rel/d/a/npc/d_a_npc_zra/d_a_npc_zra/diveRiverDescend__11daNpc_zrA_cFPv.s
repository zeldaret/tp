lbl_80B8601C:
/* 80B8601C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B86020  7C 08 02 A6 */	mflr r0
/* 80B86024  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B86028  39 61 00 70 */	addi r11, r1, 0x70
/* 80B8602C  4B 7D C1 AC */	b _savegpr_28
/* 80B86030  7C 7D 1B 78 */	mr r29, r3
/* 80B86034  3C 80 80 B9 */	lis r4, cNullVec__6Z2Calc@ha
/* 80B86038  3B C4 CE 90 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80B8603C  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha
/* 80B86040  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l
/* 80B86044  38 9F 00 00 */	addi r4, r31, 0
/* 80B86048  A8 04 00 74 */	lha r0, 0x74(r4)
/* 80B8604C  54 00 08 3C */	slwi r0, r0, 1
/* 80B86050  7C 1C 07 34 */	extsh r28, r0
/* 80B86054  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B86058  2C 00 00 02 */	cmpwi r0, 2
/* 80B8605C  41 82 00 BC */	beq lbl_80B86118
/* 80B86060  40 80 03 C4 */	bge lbl_80B86424
/* 80B86064  2C 00 00 00 */	cmpwi r0, 0
/* 80B86068  41 82 00 0C */	beq lbl_80B86074
/* 80B8606C  48 00 03 B8 */	b lbl_80B86424
/* 80B86070  48 00 03 B4 */	b lbl_80B86424
lbl_80B86074:
/* 80B86074  38 80 00 00 */	li r4, 0
/* 80B86078  38 A0 00 00 */	li r5, 0
/* 80B8607C  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B86080  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B86084  7D 89 03 A6 */	mtctr r12
/* 80B86088  4E 80 04 21 */	bctrl 
/* 80B8608C  88 1D 15 76 */	lbz r0, 0x1576(r29)
/* 80B86090  28 00 00 00 */	cmplwi r0, 0
/* 80B86094  40 82 00 28 */	bne lbl_80B860BC
/* 80B86098  7F A3 EB 78 */	mr r3, r29
/* 80B8609C  38 80 00 1B */	li r4, 0x1b
/* 80B860A0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B860A4  38 A0 00 00 */	li r5, 0
/* 80B860A8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B860AC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B860B0  7D 89 03 A6 */	mtctr r12
/* 80B860B4  4E 80 04 21 */	bctrl 
/* 80B860B8  48 00 00 24 */	b lbl_80B860DC
lbl_80B860BC:
/* 80B860BC  7F A3 EB 78 */	mr r3, r29
/* 80B860C0  38 80 00 19 */	li r4, 0x19
/* 80B860C4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B860C8  38 A0 00 00 */	li r5, 0
/* 80B860CC  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B860D0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B860D4  7D 89 03 A6 */	mtctr r12
/* 80B860D8  4E 80 04 21 */	bctrl 
lbl_80B860DC:
/* 80B860DC  38 00 00 03 */	li r0, 3
/* 80B860E0  98 1D 15 20 */	stb r0, 0x1520(r29)
/* 80B860E4  38 00 00 00 */	li r0, 0
/* 80B860E8  98 1D 07 BC */	stb r0, 0x7bc(r29)
/* 80B860EC  7F A3 EB 78 */	mr r3, r29
/* 80B860F0  38 80 00 00 */	li r4, 0
/* 80B860F4  4B FF 86 01 */	bl setLookMode__11daNpc_zrA_cFi
/* 80B860F8  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B860FC  B0 1D 15 36 */	sth r0, 0x1536(r29)
/* 80B86100  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B86104  B0 1D 15 38 */	sth r0, 0x1538(r29)
/* 80B86108  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B8610C  B0 1D 15 3A */	sth r0, 0x153a(r29)
/* 80B86110  38 00 00 02 */	li r0, 2
/* 80B86114  B0 1D 14 E6 */	sth r0, 0x14e6(r29)
lbl_80B86118:
/* 80B86118  38 7F 00 00 */	addi r3, r31, 0
/* 80B8611C  C0 23 00 84 */	lfs f1, 0x84(r3)
/* 80B86120  38 7D 15 6C */	addi r3, r29, 0x156c
/* 80B86124  C0 1F 00 F0 */	lfs f0, 0xf0(r31)
/* 80B86128  EC 41 00 28 */	fsubs f2, f1, f0
/* 80B8612C  C0 1F 07 C0 */	lfs f0, 0x7c0(r31)
/* 80B86130  EC 42 00 24 */	fdivs f2, f2, f0
/* 80B86134  4B 6E A6 0C */	b cLib_chaseF__FPfff
/* 80B86138  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B8613C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B86140  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B86144  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B86148  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B8614C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B86150  38 7D 0C 18 */	addi r3, r29, 0xc18
/* 80B86154  38 81 00 34 */	addi r4, r1, 0x34
/* 80B86158  38 A1 00 4C */	addi r5, r1, 0x4c
/* 80B8615C  4B 5C AC 84 */	b getDstPos__13daNpcF_Path_cF4cXyzR4cXyz
/* 80B86160  38 61 00 4C */	addi r3, r1, 0x4c
/* 80B86164  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80B86168  4B 6E AB 0C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B8616C  B0 61 00 08 */	sth r3, 8(r1)
/* 80B86170  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B86174  38 81 00 4C */	addi r4, r1, 0x4c
/* 80B86178  4B 6E AA 8C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B8617C  B0 61 00 0A */	sth r3, 0xa(r1)
/* 80B86180  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B86184  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80B86188  7F A3 EB 78 */	mr r3, r29
/* 80B8618C  38 81 00 08 */	addi r4, r1, 8
/* 80B86190  38 BD 15 36 */	addi r5, r29, 0x1536
/* 80B86194  38 C0 00 03 */	li r6, 3
/* 80B86198  7F 87 E3 78 */	mr r7, r28
/* 80B8619C  4B FF C3 59 */	bl calcSwimAngle__11daNpc_zrA_cFR5csXyzR5csXyzss
/* 80B861A0  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80B861A4  B0 1D 08 F0 */	sth r0, 0x8f0(r29)
/* 80B861A8  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80B861AC  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80B861B0  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 80B861B4  B0 1D 08 F4 */	sth r0, 0x8f4(r29)
/* 80B861B8  A8 1D 08 F0 */	lha r0, 0x8f0(r29)
/* 80B861BC  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80B861C0  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B861C4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80B861C8  A8 1D 08 F4 */	lha r0, 0x8f4(r29)
/* 80B861CC  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80B861D0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B861D4  C0 63 00 1C */	lfs f3, 0x1c(r3)
/* 80B861D8  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80B861DC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80B861E0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80B861E4  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80B861E8  80 1D 14 EC */	lwz r0, 0x14ec(r29)
/* 80B861EC  2C 00 00 30 */	cmpwi r0, 0x30
/* 80B861F0  40 82 00 CC */	bne lbl_80B862BC
/* 80B861F4  C0 3F 07 CC */	lfs f1, 0x7cc(r31)
/* 80B861F8  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80B861FC  4C 40 13 82 */	cror 2, 0, 2
/* 80B86200  40 82 00 14 */	bne lbl_80B86214
/* 80B86204  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80B86208  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80B8620C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80B86210  48 00 00 AC */	b lbl_80B862BC
lbl_80B86214:
/* 80B86214  C0 1F 07 DC */	lfs f0, 0x7dc(r31)
/* 80B86218  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B8621C  4C 40 13 82 */	cror 2, 0, 2
/* 80B86220  40 82 00 18 */	bne lbl_80B86238
/* 80B86224  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80B86228  C0 1F 07 94 */	lfs f0, 0x794(r31)
/* 80B8622C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B86230  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80B86234  48 00 00 88 */	b lbl_80B862BC
lbl_80B86238:
/* 80B86238  C0 1F 07 E4 */	lfs f0, 0x7e4(r31)
/* 80B8623C  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B86240  4C 40 13 82 */	cror 2, 0, 2
/* 80B86244  40 82 00 18 */	bne lbl_80B8625C
/* 80B86248  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80B8624C  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 80B86250  C0 1F 07 E8 */	lfs f0, 0x7e8(r31)
/* 80B86254  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B86258  48 00 00 64 */	b lbl_80B862BC
lbl_80B8625C:
/* 80B8625C  C0 1F 07 74 */	lfs f0, 0x774(r31)
/* 80B86260  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B86264  4C 40 13 82 */	cror 2, 0, 2
/* 80B86268  40 82 00 1C */	bne lbl_80B86284
/* 80B8626C  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80B86270  C0 1F 08 38 */	lfs f0, 0x838(r31)
/* 80B86274  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B86278  C0 1F 08 3C */	lfs f0, 0x83c(r31)
/* 80B8627C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B86280  48 00 00 3C */	b lbl_80B862BC
lbl_80B86284:
/* 80B86284  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80B86288  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 80B8628C  4C 40 13 82 */	cror 2, 0, 2
/* 80B86290  40 82 00 1C */	bne lbl_80B862AC
/* 80B86294  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80B86298  C0 1F 08 40 */	lfs f0, 0x840(r31)
/* 80B8629C  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B862A0  C0 1F 07 88 */	lfs f0, 0x788(r31)
/* 80B862A4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80B862A8  48 00 00 14 */	b lbl_80B862BC
lbl_80B862AC:
/* 80B862AC  D0 41 00 40 */	stfs f2, 0x40(r1)
/* 80B862B0  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 80B862B4  C0 1F 08 44 */	lfs f0, 0x844(r31)
/* 80B862B8  D0 01 00 48 */	stfs f0, 0x48(r1)
lbl_80B862BC:
/* 80B862BC  38 7D 04 DC */	addi r3, r29, 0x4dc
/* 80B862C0  4B 48 6C 4C */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B862C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B862C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B862CC  38 81 00 40 */	addi r4, r1, 0x40
/* 80B862D0  7C 85 23 78 */	mr r5, r4
/* 80B862D4  4B 7C 0A 98 */	b PSMTXMultVec
/* 80B862D8  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B862DC  38 81 00 40 */	addi r4, r1, 0x40
/* 80B862E0  7C 65 1B 78 */	mr r5, r3
/* 80B862E4  4B 7C 0D AC */	b PSVECAdd
/* 80B862E8  88 1D 15 0D */	lbz r0, 0x150d(r29)
/* 80B862EC  28 00 00 01 */	cmplwi r0, 1
/* 80B862F0  40 82 00 AC */	bne lbl_80B8639C
/* 80B862F4  88 1D 15 C0 */	lbz r0, 0x15c0(r29)
/* 80B862F8  28 00 00 01 */	cmplwi r0, 1
/* 80B862FC  40 82 00 A0 */	bne lbl_80B8639C
/* 80B86300  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B86304  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B86308  88 9D 15 0E */	lbz r4, 0x150e(r29)
/* 80B8630C  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80B86310  7C 05 07 74 */	extsb r5, r0
/* 80B86314  4B 4A F0 4C */	b isSwitch__10dSv_info_cCFii
/* 80B86318  2C 03 00 00 */	cmpwi r3, 0
/* 80B8631C  41 82 00 80 */	beq lbl_80B8639C
/* 80B86320  7F A3 EB 78 */	mr r3, r29
/* 80B86324  38 80 00 00 */	li r4, 0
/* 80B86328  38 A0 00 00 */	li r5, 0
/* 80B8632C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B86330  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B86334  7D 89 03 A6 */	mtctr r12
/* 80B86338  4E 80 04 21 */	bctrl 
/* 80B8633C  7F A3 EB 78 */	mr r3, r29
/* 80B86340  38 80 00 1E */	li r4, 0x1e
/* 80B86344  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B86348  38 A0 00 00 */	li r5, 0
/* 80B8634C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B86350  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B86354  7D 89 03 A6 */	mtctr r12
/* 80B86358  4E 80 04 21 */	bctrl 
/* 80B8635C  38 00 00 03 */	li r0, 3
/* 80B86360  B0 1D 09 E6 */	sth r0, 0x9e6(r29)
/* 80B86364  38 00 00 01 */	li r0, 1
/* 80B86368  98 1D 09 ED */	stb r0, 0x9ed(r29)
/* 80B8636C  38 00 00 00 */	li r0, 0
/* 80B86370  98 1D 15 94 */	stb r0, 0x1594(r29)
/* 80B86374  80 7E 09 2C */	lwz r3, 0x92c(r30)
/* 80B86378  80 1E 09 30 */	lwz r0, 0x930(r30)
/* 80B8637C  90 61 00 28 */	stw r3, 0x28(r1)
/* 80B86380  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80B86384  80 1E 09 34 */	lwz r0, 0x934(r30)
/* 80B86388  90 01 00 30 */	stw r0, 0x30(r1)
/* 80B8638C  7F A3 EB 78 */	mr r3, r29
/* 80B86390  38 81 00 28 */	addi r4, r1, 0x28
/* 80B86394  4B FF 77 8D */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B86398  48 00 00 8C */	b lbl_80B86424
lbl_80B8639C:
/* 80B8639C  80 1D 14 EC */	lwz r0, 0x14ec(r29)
/* 80B863A0  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80B863A4  41 82 00 0C */	beq lbl_80B863B0
/* 80B863A8  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80B863AC  40 82 00 78 */	bne lbl_80B86424
lbl_80B863B0:
/* 80B863B0  88 1D 15 0D */	lbz r0, 0x150d(r29)
/* 80B863B4  28 00 00 01 */	cmplwi r0, 1
/* 80B863B8  40 82 00 40 */	bne lbl_80B863F8
/* 80B863BC  88 1D 15 C0 */	lbz r0, 0x15c0(r29)
/* 80B863C0  28 00 00 01 */	cmplwi r0, 1
/* 80B863C4  40 82 00 34 */	bne lbl_80B863F8
/* 80B863C8  38 00 00 06 */	li r0, 6
/* 80B863CC  98 1D 15 94 */	stb r0, 0x1594(r29)
/* 80B863D0  80 7E 09 38 */	lwz r3, 0x938(r30)
/* 80B863D4  80 1E 09 3C */	lwz r0, 0x93c(r30)
/* 80B863D8  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80B863DC  90 01 00 20 */	stw r0, 0x20(r1)
/* 80B863E0  80 1E 09 40 */	lwz r0, 0x940(r30)
/* 80B863E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B863E8  7F A3 EB 78 */	mr r3, r29
/* 80B863EC  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B863F0  4B FF 77 31 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B863F4  48 00 00 30 */	b lbl_80B86424
lbl_80B863F8:
/* 80B863F8  38 00 00 01 */	li r0, 1
/* 80B863FC  98 1D 15 94 */	stb r0, 0x1594(r29)
/* 80B86400  80 7E 09 44 */	lwz r3, 0x944(r30)
/* 80B86404  80 1E 09 48 */	lwz r0, 0x948(r30)
/* 80B86408  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B8640C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B86410  80 1E 09 4C */	lwz r0, 0x94c(r30)
/* 80B86414  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B86418  7F A3 EB 78 */	mr r3, r29
/* 80B8641C  38 81 00 10 */	addi r4, r1, 0x10
/* 80B86420  4B FF 77 01 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
lbl_80B86424:
/* 80B86424  38 60 00 01 */	li r3, 1
/* 80B86428  39 61 00 70 */	addi r11, r1, 0x70
/* 80B8642C  4B 7D BD F8 */	b _restgpr_28
/* 80B86430  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B86434  7C 08 03 A6 */	mtlr r0
/* 80B86438  38 21 00 70 */	addi r1, r1, 0x70
/* 80B8643C  4E 80 00 20 */	blr 

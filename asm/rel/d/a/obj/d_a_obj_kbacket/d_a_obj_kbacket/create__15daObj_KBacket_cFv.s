lbl_80586048:
/* 80586048  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058604C  7C 08 02 A6 */	mflr r0
/* 80586050  90 01 00 34 */	stw r0, 0x34(r1)
/* 80586054  39 61 00 30 */	addi r11, r1, 0x30
/* 80586058  4B DD C1 7C */	b _savegpr_27
/* 8058605C  7C 7C 1B 78 */	mr r28, r3
/* 80586060  3C 80 80 58 */	lis r4, cNullVec__6Z2Calc@ha
/* 80586064  3B C4 7E 78 */	addi r30, r4, cNullVec__6Z2Calc@l
/* 80586068  3C 80 80 58 */	lis r4, m__21daObj_KBacket_Param_c@ha
/* 8058606C  3B E4 7D 84 */	addi r31, r4, m__21daObj_KBacket_Param_c@l
/* 80586070  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80586074  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80586078  40 82 01 08 */	bne lbl_80586180
/* 8058607C  7F 80 E3 79 */	or. r0, r28, r28
/* 80586080  41 82 00 F4 */	beq lbl_80586174
/* 80586084  7C 1D 03 78 */	mr r29, r0
/* 80586088  4B A9 2A DC */	b __ct__10fopAc_ac_cFv
/* 8058608C  3C 60 80 58 */	lis r3, __vt__15daObj_KBacket_c@ha
/* 80586090  38 03 7F C0 */	addi r0, r3, __vt__15daObj_KBacket_c@l
/* 80586094  90 1D 0A 50 */	stw r0, 0xa50(r29)
/* 80586098  3B 7D 05 78 */	addi r27, r29, 0x578
/* 8058609C  7F 63 DB 78 */	mr r3, r27
/* 805860A0  4B AF 00 00 */	b __ct__9dBgS_AcchFv
/* 805860A4  3C 60 80 58 */	lis r3, __vt__12dBgS_ObjAcch@ha
/* 805860A8  38 63 7F 54 */	addi r3, r3, __vt__12dBgS_ObjAcch@l
/* 805860AC  90 7B 00 10 */	stw r3, 0x10(r27)
/* 805860B0  38 03 00 0C */	addi r0, r3, 0xc
/* 805860B4  90 1B 00 14 */	stw r0, 0x14(r27)
/* 805860B8  38 03 00 18 */	addi r0, r3, 0x18
/* 805860BC  90 1B 00 24 */	stw r0, 0x24(r27)
/* 805860C0  38 7B 00 14 */	addi r3, r27, 0x14
/* 805860C4  4B AF 2D A4 */	b SetObj__16dBgS_PolyPassChkFv
/* 805860C8  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 805860CC  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 805860D0  90 1D 07 68 */	stw r0, 0x768(r29)
/* 805860D4  38 7D 07 6C */	addi r3, r29, 0x76c
/* 805860D8  4B AF D6 88 */	b __ct__10dCcD_GSttsFv
/* 805860DC  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 805860E0  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 805860E4  90 7D 07 68 */	stw r3, 0x768(r29)
/* 805860E8  38 03 00 20 */	addi r0, r3, 0x20
/* 805860EC  90 1D 07 6C */	stw r0, 0x76c(r29)
/* 805860F0  38 7D 07 8C */	addi r3, r29, 0x78c
/* 805860F4  4B AE FD B8 */	b __ct__12dBgS_AcchCirFv
/* 805860F8  38 7D 07 CC */	addi r3, r29, 0x7cc
/* 805860FC  4B CE 1B 20 */	b __ct__11cBgS_GndChkFv
/* 80586100  3B 7D 08 08 */	addi r27, r29, 0x808
/* 80586104  7F 63 DB 78 */	mr r3, r27
/* 80586108  4B AF D9 20 */	b __ct__12dCcD_GObjInfFv
/* 8058610C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80586110  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80586114  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80586118  3C 60 80 58 */	lis r3, __vt__8cM3dGAab@ha
/* 8058611C  38 03 7F 9C */	addi r0, r3, __vt__8cM3dGAab@l
/* 80586120  90 1B 01 1C */	stw r0, 0x11c(r27)
/* 80586124  3C 60 80 58 */	lis r3, __vt__8cM3dGCyl@ha
/* 80586128  38 03 7F A8 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 8058612C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80586130  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80586134  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80586138  90 7B 01 20 */	stw r3, 0x120(r27)
/* 8058613C  38 03 00 58 */	addi r0, r3, 0x58
/* 80586140  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80586144  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80586148  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 8058614C  90 7B 00 3C */	stw r3, 0x3c(r27)
/* 80586150  38 03 00 2C */	addi r0, r3, 0x2c
/* 80586154  90 1B 01 20 */	stw r0, 0x120(r27)
/* 80586158  38 03 00 84 */	addi r0, r3, 0x84
/* 8058615C  90 1B 01 38 */	stw r0, 0x138(r27)
/* 80586160  3C 60 80 58 */	lis r3, __vt__8cM3dGLin@ha
/* 80586164  38 03 7F B4 */	addi r0, r3, __vt__8cM3dGLin@l
/* 80586168  90 1D 09 5C */	stw r0, 0x95c(r29)
/* 8058616C  38 7D 09 60 */	addi r3, r29, 0x960
/* 80586170  4B AF 1A F8 */	b __ct__11dBgS_LinChkFv
lbl_80586174:
/* 80586174  80 1C 04 A0 */	lwz r0, 0x4a0(r28)
/* 80586178  60 00 00 08 */	ori r0, r0, 8
/* 8058617C  90 1C 04 A0 */	stw r0, 0x4a0(r28)
lbl_80586180:
/* 80586180  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80586184  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80586188  2C 00 00 01 */	cmpwi r0, 1
/* 8058618C  41 82 00 1C */	beq lbl_805861A8
/* 80586190  40 80 00 20 */	bge lbl_805861B0
/* 80586194  2C 00 00 00 */	cmpwi r0, 0
/* 80586198  40 80 00 08 */	bge lbl_805861A0
/* 8058619C  48 00 00 14 */	b lbl_805861B0
lbl_805861A0:
/* 805861A0  38 00 00 00 */	li r0, 0
/* 805861A4  48 00 00 10 */	b lbl_805861B4
lbl_805861A8:
/* 805861A8  38 00 00 01 */	li r0, 1
/* 805861AC  48 00 00 08 */	b lbl_805861B4
lbl_805861B0:
/* 805861B0  38 00 00 00 */	li r0, 0
lbl_805861B4:
/* 805861B4  98 1C 09 D0 */	stb r0, 0x9d0(r28)
/* 805861B8  38 7C 05 6C */	addi r3, r28, 0x56c
/* 805861BC  38 9E 00 20 */	addi r4, r30, 0x20
/* 805861C0  80 04 00 04 */	lwz r0, 4(r4)
/* 805861C4  54 00 10 3A */	slwi r0, r0, 2
/* 805861C8  38 9E 00 30 */	addi r4, r30, 0x30
/* 805861CC  7C 84 00 2E */	lwzx r4, r4, r0
/* 805861D0  4B AA 6C EC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 805861D4  7C 7D 1B 78 */	mr r29, r3
/* 805861D8  2C 1D 00 04 */	cmpwi r29, 4
/* 805861DC  40 82 01 F8 */	bne lbl_805863D4
/* 805861E0  7F 83 E3 78 */	mr r3, r28
/* 805861E4  3C 80 80 58 */	lis r4, createHeapCallBack__15daObj_KBacket_cFP10fopAc_ac_c@ha
/* 805861E8  38 84 75 A0 */	addi r4, r4, createHeapCallBack__15daObj_KBacket_cFP10fopAc_ac_c@l
/* 805861EC  38 A0 08 10 */	li r5, 0x810
/* 805861F0  4B A9 42 C0 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 805861F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805861F8  40 82 00 0C */	bne lbl_80586204
/* 805861FC  38 60 00 05 */	li r3, 5
/* 80586200  48 00 01 D8 */	b lbl_805863D8
lbl_80586204:
/* 80586204  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80586208  38 03 00 24 */	addi r0, r3, 0x24
/* 8058620C  90 1C 05 04 */	stw r0, 0x504(r28)
/* 80586210  7F 83 E3 78 */	mr r3, r28
/* 80586214  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 80586218  FC 40 08 90 */	fmr f2, f1
/* 8058621C  FC 60 08 90 */	fmr f3, f1
/* 80586220  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 80586224  FC A0 20 90 */	fmr f5, f4
/* 80586228  FC C0 20 90 */	fmr f6, f4
/* 8058622C  4B A9 43 1C */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80586230  7F 83 E3 78 */	mr r3, r28
/* 80586234  48 00 14 2D */	bl reset__15daObj_KBacket_cFv
/* 80586238  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 8058623C  54 00 00 01 */	rlwinm. r0, r0, 0, 0, 0
/* 80586240  41 82 00 7C */	beq lbl_805862BC
/* 80586244  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80586248  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8058624C  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80586250  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80586254  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80586258  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8058625C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80586260  C0 03 31 C0 */	lfs f0, 0x31c0(r3)
/* 80586264  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80586268  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058626C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80586270  C0 03 31 C4 */	lfs f0, 0x31c4(r3)
/* 80586274  EC 01 00 32 */	fmuls f0, f1, f0
/* 80586278  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 8058627C  88 1C 09 D0 */	lbz r0, 0x9d0(r28)
/* 80586280  28 00 00 00 */	cmplwi r0, 0
/* 80586284  40 82 00 0C */	bne lbl_80586290
/* 80586288  38 04 40 00 */	addi r0, r4, 0x4000
/* 8058628C  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_80586290:
/* 80586290  88 1C 09 D0 */	lbz r0, 0x9d0(r28)
/* 80586294  28 00 00 01 */	cmplwi r0, 1
/* 80586298  40 82 00 0C */	bne lbl_805862A4
/* 8058629C  38 04 C0 00 */	addi r0, r4, -16384
/* 805862A0  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_805862A4:
/* 805862A4  B0 9C 04 E6 */	sth r4, 0x4e6(r28)
/* 805862A8  38 00 08 00 */	li r0, 0x800
/* 805862AC  B0 1C 0A 18 */	sth r0, 0xa18(r28)
/* 805862B0  38 00 00 01 */	li r0, 1
/* 805862B4  98 1C 0A 44 */	stb r0, 0xa44(r28)
/* 805862B8  98 1C 0A 47 */	stb r0, 0xa47(r28)
lbl_805862BC:
/* 805862BC  38 1C 04 E4 */	addi r0, r28, 0x4e4
/* 805862C0  90 01 00 08 */	stw r0, 8(r1)
/* 805862C4  38 7C 05 78 */	addi r3, r28, 0x578
/* 805862C8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 805862CC  38 BC 04 BC */	addi r5, r28, 0x4bc
/* 805862D0  7F 86 E3 78 */	mr r6, r28
/* 805862D4  38 E0 00 01 */	li r7, 1
/* 805862D8  39 1C 07 8C */	addi r8, r28, 0x78c
/* 805862DC  39 3C 04 F8 */	addi r9, r28, 0x4f8
/* 805862E0  39 5C 04 DC */	addi r10, r28, 0x4dc
/* 805862E4  4B AE FF 64 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 805862E8  38 7C 07 50 */	addi r3, r28, 0x750
/* 805862EC  38 9F 00 00 */	addi r4, r31, 0
/* 805862F0  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 805862F4  FC 00 00 1E */	fctiwz f0, f0
/* 805862F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 805862FC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80586300  38 A0 00 00 */	li r5, 0
/* 80586304  7F 86 E3 78 */	mr r6, r28
/* 80586308  4B AF D5 58 */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 8058630C  38 7C 08 08 */	addi r3, r28, 0x808
/* 80586310  38 9E 00 34 */	addi r4, r30, 0x34
/* 80586314  4B AF E5 A0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80586318  38 1C 07 50 */	addi r0, r28, 0x750
/* 8058631C  90 1C 08 4C */	stw r0, 0x84c(r28)
/* 80586320  38 7C 05 78 */	addi r3, r28, 0x578
/* 80586324  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80586328  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8058632C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80586330  4B AF 07 7C */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80586334  80 1C 06 54 */	lwz r0, 0x654(r28)
/* 80586338  90 1C 07 CC */	stw r0, 0x7cc(r28)
/* 8058633C  80 1C 06 58 */	lwz r0, 0x658(r28)
/* 80586340  90 1C 07 D0 */	stw r0, 0x7d0(r28)
/* 80586344  80 1C 06 5C */	lwz r0, 0x65c(r28)
/* 80586348  90 1C 07 D4 */	stw r0, 0x7d4(r28)
/* 8058634C  88 1C 06 60 */	lbz r0, 0x660(r28)
/* 80586350  98 1C 07 D8 */	stb r0, 0x7d8(r28)
/* 80586354  A0 1C 06 68 */	lhz r0, 0x668(r28)
/* 80586358  B0 1C 07 E0 */	sth r0, 0x7e0(r28)
/* 8058635C  A0 1C 06 6A */	lhz r0, 0x66a(r28)
/* 80586360  B0 1C 07 E2 */	sth r0, 0x7e2(r28)
/* 80586364  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 80586368  90 1C 07 E4 */	stw r0, 0x7e4(r28)
/* 8058636C  80 1C 06 70 */	lwz r0, 0x670(r28)
/* 80586370  90 1C 07 E8 */	stw r0, 0x7e8(r28)
/* 80586374  C0 1C 06 78 */	lfs f0, 0x678(r28)
/* 80586378  D0 1C 07 F0 */	stfs f0, 0x7f0(r28)
/* 8058637C  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 80586380  D0 1C 07 F4 */	stfs f0, 0x7f4(r28)
/* 80586384  C0 1C 06 80 */	lfs f0, 0x680(r28)
/* 80586388  D0 1C 07 F8 */	stfs f0, 0x7f8(r28)
/* 8058638C  80 1C 06 84 */	lwz r0, 0x684(r28)
/* 80586390  90 1C 07 FC */	stw r0, 0x7fc(r28)
/* 80586394  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 80586398  D0 1C 08 00 */	stfs f0, 0x800(r28)
/* 8058639C  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 805863A0  90 1C 08 04 */	stw r0, 0x804(r28)
/* 805863A4  C0 1C 06 10 */	lfs f0, 0x610(r28)
/* 805863A8  D0 1C 0A 00 */	stfs f0, 0xa00(r28)
/* 805863AC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 805863B0  C0 1C 0A 00 */	lfs f0, 0xa00(r28)
/* 805863B4  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805863B8  41 82 00 14 */	beq lbl_805863CC
/* 805863BC  7F 83 E3 78 */	mr r3, r28
/* 805863C0  48 00 12 01 */	bl setEnvTevColor__15daObj_KBacket_cFv
/* 805863C4  7F 83 E3 78 */	mr r3, r28
/* 805863C8  48 00 12 55 */	bl setRoomNo__15daObj_KBacket_cFv
lbl_805863CC:
/* 805863CC  7F 83 E3 78 */	mr r3, r28
/* 805863D0  48 00 03 69 */	bl Execute__15daObj_KBacket_cFv
lbl_805863D4:
/* 805863D4  7F A3 EB 78 */	mr r3, r29
lbl_805863D8:
/* 805863D8  39 61 00 30 */	addi r11, r1, 0x30
/* 805863DC  4B DD BE 44 */	b _restgpr_27
/* 805863E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805863E4  7C 08 03 A6 */	mtlr r0
/* 805863E8  38 21 00 30 */	addi r1, r1, 0x30
/* 805863EC  4E 80 00 20 */	blr 

lbl_80719594:
/* 80719594  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80719598  7C 08 02 A6 */	mflr r0
/* 8071959C  90 01 00 64 */	stw r0, 0x64(r1)
/* 807195A0  39 61 00 60 */	addi r11, r1, 0x60
/* 807195A4  4B C4 8C 28 */	b _savegpr_25
/* 807195A8  7C 7A 1B 78 */	mr r26, r3
/* 807195AC  3C 60 80 72 */	lis r3, lit_3777@ha
/* 807195B0  3B 83 C5 44 */	addi r28, r3, lit_3777@l
/* 807195B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807195B8  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 807195BC  83 3D 5D AC */	lwz r25, 0x5dac(r29)
/* 807195C0  80 1A 07 08 */	lwz r0, 0x708(r26)
/* 807195C4  90 01 00 08 */	stw r0, 8(r1)
/* 807195C8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 807195CC  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 807195D0  38 81 00 08 */	addi r4, r1, 8
/* 807195D4  4B 90 02 24 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 807195D8  7C 7E 1B 78 */	mr r30, r3
/* 807195DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807195E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807195E4  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 807195E8  7C 00 07 74 */	extsb r0, r0
/* 807195EC  1C 00 00 38 */	mulli r0, r0, 0x38
/* 807195F0  7C 63 02 14 */	add r3, r3, r0
/* 807195F4  83 63 5D 74 */	lwz r27, 0x5d74(r3)
/* 807195F8  3C 60 80 72 */	lis r3, s_ks_sub__FPvPv@ha
/* 807195FC  38 63 94 88 */	addi r3, r3, s_ks_sub__FPvPv@l
/* 80719600  7F 44 D3 78 */	mr r4, r26
/* 80719604  4B 90 7D 34 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80719608  7C 7F 1B 79 */	or. r31, r3, r3
/* 8071960C  41 82 0A 48 */	beq lbl_8071A054
/* 80719610  A8 1A 0C 32 */	lha r0, 0xc32(r26)
/* 80719614  2C 00 00 08 */	cmpwi r0, 8
/* 80719618  41 82 08 38 */	beq lbl_80719E50
/* 8071961C  40 80 00 38 */	bge lbl_80719654
/* 80719620  2C 00 00 03 */	cmpwi r0, 3
/* 80719624  41 82 03 C8 */	beq lbl_807199EC
/* 80719628  40 80 00 14 */	bge lbl_8071963C
/* 8071962C  2C 00 00 01 */	cmpwi r0, 1
/* 80719630  41 82 00 54 */	beq lbl_80719684
/* 80719634  40 80 01 F0 */	bge lbl_80719824
/* 80719638  48 00 0A 1C */	b lbl_8071A054
lbl_8071963C:
/* 8071963C  2C 00 00 06 */	cmpwi r0, 6
/* 80719640  41 82 06 FC */	beq lbl_80719D3C
/* 80719644  40 80 07 98 */	bge lbl_80719DDC
/* 80719648  2C 00 00 05 */	cmpwi r0, 5
/* 8071964C  40 80 06 84 */	bge lbl_80719CD0
/* 80719650  48 00 04 A8 */	b lbl_80719AF8
lbl_80719654:
/* 80719654  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80719658  41 82 05 E4 */	beq lbl_80719C3C
/* 8071965C  40 80 00 1C */	bge lbl_80719678
/* 80719660  2C 00 00 0A */	cmpwi r0, 0xa
/* 80719664  41 82 09 00 */	beq lbl_80719F64
/* 80719668  41 80 08 A8 */	blt lbl_80719F10
/* 8071966C  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80719670  40 80 05 48 */	bge lbl_80719BB8
/* 80719674  48 00 09 E0 */	b lbl_8071A054
lbl_80719678:
/* 80719678  2C 00 00 64 */	cmpwi r0, 0x64
/* 8071967C  41 82 09 D8 */	beq lbl_8071A054
/* 80719680  48 00 09 D4 */	b lbl_8071A054
lbl_80719684:
/* 80719684  A0 1F 00 F8 */	lhz r0, 0xf8(r31)
/* 80719688  28 00 00 02 */	cmplwi r0, 2
/* 8071968C  41 82 00 28 */	beq lbl_807196B4
/* 80719690  38 80 00 02 */	li r4, 2
/* 80719694  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80719698  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8071969C  38 C0 00 00 */	li r6, 0
/* 807196A0  4B 90 22 68 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 807196A4  A0 1F 00 FA */	lhz r0, 0xfa(r31)
/* 807196A8  60 00 00 02 */	ori r0, r0, 2
/* 807196AC  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 807196B0  48 00 09 A4 */	b lbl_8071A054
lbl_807196B4:
/* 807196B4  38 7B 02 48 */	addi r3, r27, 0x248
/* 807196B8  4B A4 7E 18 */	b Stop__9dCamera_cFv
/* 807196BC  38 00 00 02 */	li r0, 2
/* 807196C0  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 807196C4  38 00 00 00 */	li r0, 0
/* 807196C8  B0 1A 0C 34 */	sth r0, 0xc34(r26)
/* 807196CC  C0 1C 01 1C */	lfs f0, 0x11c(r28)
/* 807196D0  D0 1A 0C 80 */	stfs f0, 0xc80(r26)
/* 807196D4  38 7B 02 48 */	addi r3, r27, 0x248
/* 807196D8  38 80 00 03 */	li r4, 3
/* 807196DC  4B A4 99 30 */	b SetTrimSize__9dCamera_cFl
/* 807196E0  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 807196E4  38 00 00 03 */	li r0, 3
/* 807196E8  B0 03 06 04 */	sth r0, 0x604(r3)
/* 807196EC  38 00 00 00 */	li r0, 0
/* 807196F0  90 03 06 0C */	stw r0, 0x60c(r3)
/* 807196F4  C0 1C 01 74 */	lfs f0, 0x174(r28)
/* 807196F8  D0 1A 0C 44 */	stfs f0, 0xc44(r26)
/* 807196FC  C0 1C 01 78 */	lfs f0, 0x178(r28)
/* 80719700  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719704  C0 1C 01 7C */	lfs f0, 0x17c(r28)
/* 80719708  D0 1A 0C 4C */	stfs f0, 0xc4c(r26)
/* 8071970C  C0 1C 01 80 */	lfs f0, 0x180(r28)
/* 80719710  D0 1A 0C 38 */	stfs f0, 0xc38(r26)
/* 80719714  C0 1C 01 84 */	lfs f0, 0x184(r28)
/* 80719718  D0 1A 0C 3C */	stfs f0, 0xc3c(r26)
/* 8071971C  C0 1C 01 88 */	lfs f0, 0x188(r28)
/* 80719720  D0 1A 0C 40 */	stfs f0, 0xc40(r26)
/* 80719724  C0 1C 01 8C */	lfs f0, 0x18c(r28)
/* 80719728  D0 1A 0C 5C */	stfs f0, 0xc5c(r26)
/* 8071972C  C0 1C 01 90 */	lfs f0, 0x190(r28)
/* 80719730  D0 1A 0C 60 */	stfs f0, 0xc60(r26)
/* 80719734  C0 1C 01 94 */	lfs f0, 0x194(r28)
/* 80719738  D0 1A 0C 64 */	stfs f0, 0xc64(r26)
/* 8071973C  C0 1C 01 98 */	lfs f0, 0x198(r28)
/* 80719740  D0 1A 0C 50 */	stfs f0, 0xc50(r26)
/* 80719744  C0 1C 01 9C */	lfs f0, 0x19c(r28)
/* 80719748  D0 1A 0C 54 */	stfs f0, 0xc54(r26)
/* 8071974C  C0 1C 01 A0 */	lfs f0, 0x1a0(r28)
/* 80719750  D0 1A 0C 58 */	stfs f0, 0xc58(r26)
/* 80719754  C0 3A 0C 5C */	lfs f1, 0xc5c(r26)
/* 80719758  C0 1A 0C 44 */	lfs f0, 0xc44(r26)
/* 8071975C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80719760  FC 00 02 10 */	fabs f0, f0
/* 80719764  FC 00 00 18 */	frsp f0, f0
/* 80719768  C0 5C 01 A4 */	lfs f2, 0x1a4(r28)
/* 8071976C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80719770  D0 1A 0C 74 */	stfs f0, 0xc74(r26)
/* 80719774  C0 3A 0C 60 */	lfs f1, 0xc60(r26)
/* 80719778  C0 1A 0C 48 */	lfs f0, 0xc48(r26)
/* 8071977C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80719780  FC 00 02 10 */	fabs f0, f0
/* 80719784  FC 00 00 18 */	frsp f0, f0
/* 80719788  EC 02 00 32 */	fmuls f0, f2, f0
/* 8071978C  D0 1A 0C 78 */	stfs f0, 0xc78(r26)
/* 80719790  C0 3A 0C 64 */	lfs f1, 0xc64(r26)
/* 80719794  C0 1A 0C 4C */	lfs f0, 0xc4c(r26)
/* 80719798  EC 01 00 28 */	fsubs f0, f1, f0
/* 8071979C  FC 00 02 10 */	fabs f0, f0
/* 807197A0  FC 00 00 18 */	frsp f0, f0
/* 807197A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 807197A8  D0 1A 0C 7C */	stfs f0, 0xc7c(r26)
/* 807197AC  C0 3A 0C 50 */	lfs f1, 0xc50(r26)
/* 807197B0  C0 1A 0C 38 */	lfs f0, 0xc38(r26)
/* 807197B4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807197B8  FC 00 02 10 */	fabs f0, f0
/* 807197BC  FC 00 00 18 */	frsp f0, f0
/* 807197C0  C0 5C 01 30 */	lfs f2, 0x130(r28)
/* 807197C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 807197C8  D0 1A 0C 68 */	stfs f0, 0xc68(r26)
/* 807197CC  C0 3A 0C 54 */	lfs f1, 0xc54(r26)
/* 807197D0  C0 1A 0C 3C */	lfs f0, 0xc3c(r26)
/* 807197D4  EC 01 00 28 */	fsubs f0, f1, f0
/* 807197D8  FC 00 02 10 */	fabs f0, f0
/* 807197DC  FC 00 00 18 */	frsp f0, f0
/* 807197E0  EC 02 00 32 */	fmuls f0, f2, f0
/* 807197E4  D0 1A 0C 6C */	stfs f0, 0xc6c(r26)
/* 807197E8  C0 3A 0C 58 */	lfs f1, 0xc58(r26)
/* 807197EC  C0 1A 0C 40 */	lfs f0, 0xc40(r26)
/* 807197F0  EC 01 00 28 */	fsubs f0, f1, f0
/* 807197F4  FC 00 02 10 */	fabs f0, f0
/* 807197F8  FC 00 00 18 */	frsp f0, f0
/* 807197FC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80719800  D0 1A 0C 70 */	stfs f0, 0xc70(r26)
/* 80719804  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80719808  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071980C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80719810  7F 44 D3 78 */	mr r4, r26
/* 80719814  3C A0 80 04 */	lis r5, dEv_noFinishSkipProc__FPvi@ha
/* 80719818  38 A5 28 DC */	addi r5, r5, dEv_noFinishSkipProc__FPvi@l
/* 8071981C  38 C0 00 00 */	li r6, 0
/* 80719820  4B 92 90 F4 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80719824:
/* 80719824  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719828  2C 00 00 3C */	cmpwi r0, 0x3c
/* 8071982C  40 81 01 AC */	ble lbl_807199D8
/* 80719830  38 7A 0C 44 */	addi r3, r26, 0xc44
/* 80719834  C0 3A 0C 5C */	lfs f1, 0xc5c(r26)
/* 80719838  C0 5C 01 A8 */	lfs f2, 0x1a8(r28)
/* 8071983C  C0 7A 0C 74 */	lfs f3, 0xc74(r26)
/* 80719840  C0 1A 0C 84 */	lfs f0, 0xc84(r26)
/* 80719844  EC 63 00 32 */	fmuls f3, f3, f0
/* 80719848  4B B5 61 F4 */	b cLib_addCalc2__FPffff
/* 8071984C  38 7A 0C 48 */	addi r3, r26, 0xc48
/* 80719850  C0 3A 0C 60 */	lfs f1, 0xc60(r26)
/* 80719854  C0 5C 01 A8 */	lfs f2, 0x1a8(r28)
/* 80719858  C0 7A 0C 78 */	lfs f3, 0xc78(r26)
/* 8071985C  C0 1A 0C 84 */	lfs f0, 0xc84(r26)
/* 80719860  EC 63 00 32 */	fmuls f3, f3, f0
/* 80719864  4B B5 61 D8 */	b cLib_addCalc2__FPffff
/* 80719868  38 7A 0C 4C */	addi r3, r26, 0xc4c
/* 8071986C  C0 3A 0C 64 */	lfs f1, 0xc64(r26)
/* 80719870  C0 5C 01 A8 */	lfs f2, 0x1a8(r28)
/* 80719874  C0 7A 0C 7C */	lfs f3, 0xc7c(r26)
/* 80719878  C0 1A 0C 84 */	lfs f0, 0xc84(r26)
/* 8071987C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80719880  4B B5 61 BC */	b cLib_addCalc2__FPffff
/* 80719884  38 7A 0C 38 */	addi r3, r26, 0xc38
/* 80719888  C0 3A 0C 50 */	lfs f1, 0xc50(r26)
/* 8071988C  C0 5C 01 A8 */	lfs f2, 0x1a8(r28)
/* 80719890  C0 7A 0C 68 */	lfs f3, 0xc68(r26)
/* 80719894  C0 1A 0C 84 */	lfs f0, 0xc84(r26)
/* 80719898  EC 63 00 32 */	fmuls f3, f3, f0
/* 8071989C  4B B5 61 A0 */	b cLib_addCalc2__FPffff
/* 807198A0  38 7A 0C 3C */	addi r3, r26, 0xc3c
/* 807198A4  C0 3A 0C 54 */	lfs f1, 0xc54(r26)
/* 807198A8  C0 5C 01 A8 */	lfs f2, 0x1a8(r28)
/* 807198AC  C0 7A 0C 6C */	lfs f3, 0xc6c(r26)
/* 807198B0  C0 1A 0C 84 */	lfs f0, 0xc84(r26)
/* 807198B4  EC 63 00 32 */	fmuls f3, f3, f0
/* 807198B8  4B B5 61 84 */	b cLib_addCalc2__FPffff
/* 807198BC  38 7A 0C 40 */	addi r3, r26, 0xc40
/* 807198C0  C0 3A 0C 58 */	lfs f1, 0xc58(r26)
/* 807198C4  C0 5C 01 A8 */	lfs f2, 0x1a8(r28)
/* 807198C8  C0 7A 0C 70 */	lfs f3, 0xc70(r26)
/* 807198CC  C0 1A 0C 84 */	lfs f0, 0xc84(r26)
/* 807198D0  EC 63 00 32 */	fmuls f3, f3, f0
/* 807198D4  4B B5 61 68 */	b cLib_addCalc2__FPffff
/* 807198D8  38 7A 0C 84 */	addi r3, r26, 0xc84
/* 807198DC  C0 3C 00 04 */	lfs f1, 4(r28)
/* 807198E0  FC 40 08 90 */	fmr f2, f1
/* 807198E4  C0 7C 01 5C */	lfs f3, 0x15c(r28)
/* 807198E8  4B B5 61 54 */	b cLib_addCalc2__FPffff
/* 807198EC  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 807198F0  2C 00 01 02 */	cmpwi r0, 0x102
/* 807198F4  40 82 00 5C */	bne lbl_80719950
/* 807198F8  38 00 00 02 */	li r0, 2
/* 807198FC  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80719900  C0 1C 01 6C */	lfs f0, 0x16c(r28)
/* 80719904  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80719908  C0 1C 01 AC */	lfs f0, 0x1ac(r28)
/* 8071990C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80719910  C0 1C 01 B0 */	lfs f0, 0x1b0(r28)
/* 80719914  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80719918  7F 23 CB 78 */	mr r3, r25
/* 8071991C  38 81 00 24 */	addi r4, r1, 0x24
/* 80719920  38 A0 80 00 */	li r5, -32768
/* 80719924  38 C0 00 00 */	li r6, 0
/* 80719928  81 99 06 28 */	lwz r12, 0x628(r25)
/* 8071992C  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80719930  7D 89 03 A6 */	mtctr r12
/* 80719934  4E 80 04 21 */	bctrl 
/* 80719938  38 00 00 01 */	li r0, 1
/* 8071993C  90 19 06 14 */	stw r0, 0x614(r25)
/* 80719940  90 19 06 0C */	stw r0, 0x60c(r25)
/* 80719944  38 00 00 00 */	li r0, 0
/* 80719948  90 19 06 10 */	stw r0, 0x610(r25)
/* 8071994C  B0 19 06 0A */	sth r0, 0x60a(r25)
lbl_80719950:
/* 80719950  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719954  2C 00 01 04 */	cmpwi r0, 0x104
/* 80719958  40 82 00 80 */	bne lbl_807199D8
/* 8071995C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80719960  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80719964  80 63 00 00 */	lwz r3, 0(r3)
/* 80719968  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 8071996C  4B 8F 2A 70 */	b mDoMtx_YrotS__FPA4_fs
/* 80719970  C0 1C 00 6C */	lfs f0, 0x6c(r28)
/* 80719974  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80719978  C0 1C 00 70 */	lfs f0, 0x70(r28)
/* 8071997C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80719980  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80719984  38 61 00 30 */	addi r3, r1, 0x30
/* 80719988  38 9A 0C 38 */	addi r4, r26, 0xc38
/* 8071998C  4B B5 75 60 */	b MtxPosition__FP4cXyzP4cXyz
/* 80719990  38 7A 0C 38 */	addi r3, r26, 0xc38
/* 80719994  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80719998  7C 65 1B 78 */	mr r5, r3
/* 8071999C  4B C2 D6 F4 */	b PSVECAdd
/* 807199A0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 807199A4  D0 1A 0C 44 */	stfs f0, 0xc44(r26)
/* 807199A8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807199AC  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 807199B0  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 807199B4  D0 1A 0C 4C */	stfs f0, 0xc4c(r26)
/* 807199B8  C0 3A 0C 48 */	lfs f1, 0xc48(r26)
/* 807199BC  C0 1C 01 24 */	lfs f0, 0x124(r28)
/* 807199C0  EC 01 00 2A */	fadds f0, f1, f0
/* 807199C4  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 807199C8  38 00 00 03 */	li r0, 3
/* 807199CC  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 807199D0  38 00 00 00 */	li r0, 0
/* 807199D4  B0 1A 0C 34 */	sth r0, 0xc34(r26)
lbl_807199D8:
/* 807199D8  C0 3C 01 20 */	lfs f1, 0x120(r28)
/* 807199DC  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 807199E0  EC 01 00 2A */	fadds f0, f1, f0
/* 807199E4  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 807199E8  48 00 06 6C */	b lbl_8071A054
lbl_807199EC:
/* 807199EC  C0 3C 01 20 */	lfs f1, 0x120(r28)
/* 807199F0  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 807199F4  EC 01 00 2A */	fadds f0, f1, f0
/* 807199F8  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 807199FC  38 7A 0C 4C */	addi r3, r26, 0xc4c
/* 80719A00  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80719A04  C0 5C 01 0C */	lfs f2, 0x10c(r28)
/* 80719A08  C0 7C 00 14 */	lfs f3, 0x14(r28)
/* 80719A0C  4B B5 60 30 */	b cLib_addCalc2__FPffff
/* 80719A10  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719A14  1C 00 0A 00 */	mulli r0, r0, 0xa00
/* 80719A18  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80719A1C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80719A20  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80719A24  7C 43 04 2E */	lfsx f2, r3, r0
/* 80719A28  38 7A 0C 48 */	addi r3, r26, 0xc48
/* 80719A2C  C0 3C 01 24 */	lfs f1, 0x124(r28)
/* 80719A30  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80719A34  EC 21 00 2A */	fadds f1, f1, f0
/* 80719A38  C0 1C 00 88 */	lfs f0, 0x88(r28)
/* 80719A3C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80719A40  EC 21 00 2A */	fadds f1, f1, f0
/* 80719A44  C0 5C 01 0C */	lfs f2, 0x10c(r28)
/* 80719A48  C0 7C 00 14 */	lfs f3, 0x14(r28)
/* 80719A4C  4B B5 5F F0 */	b cLib_addCalc2__FPffff
/* 80719A50  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719A54  2C 00 00 5D */	cmpwi r0, 0x5d
/* 80719A58  40 82 05 FC */	bne lbl_8071A054
/* 80719A5C  C0 1A 04 AC */	lfs f0, 0x4ac(r26)
/* 80719A60  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80719A64  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80719A68  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80719A6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80719A70  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 80719A74  4B 8F 29 68 */	b mDoMtx_YrotS__FPA4_fs
/* 80719A78  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80719A7C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80719A80  C0 1C 01 04 */	lfs f0, 0x104(r28)
/* 80719A84  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80719A88  C0 1C 01 B4 */	lfs f0, 0x1b4(r28)
/* 80719A8C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80719A90  38 61 00 30 */	addi r3, r1, 0x30
/* 80719A94  38 9A 0C 38 */	addi r4, r26, 0xc38
/* 80719A98  4B B5 74 54 */	b MtxPosition__FP4cXyzP4cXyz
/* 80719A9C  38 7A 0C 38 */	addi r3, r26, 0xc38
/* 80719AA0  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80719AA4  7C 65 1B 78 */	mr r5, r3
/* 80719AA8  4B C2 D5 E8 */	b PSVECAdd
/* 80719AAC  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80719AB0  D0 1A 0C 44 */	stfs f0, 0xc44(r26)
/* 80719AB4  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80719AB8  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719ABC  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80719AC0  D0 1A 0C 4C */	stfs f0, 0xc4c(r26)
/* 80719AC4  C0 3A 0C 48 */	lfs f1, 0xc48(r26)
/* 80719AC8  C0 1C 01 B8 */	lfs f0, 0x1b8(r28)
/* 80719ACC  EC 01 00 2A */	fadds f0, f1, f0
/* 80719AD0  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719AD4  38 00 00 04 */	li r0, 4
/* 80719AD8  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 80719ADC  38 00 00 00 */	li r0, 0
/* 80719AE0  B0 1A 0C 34 */	sth r0, 0xc34(r26)
/* 80719AE4  38 00 00 02 */	li r0, 2
/* 80719AE8  B0 1A 05 B4 */	sth r0, 0x5b4(r26)
/* 80719AEC  38 00 00 14 */	li r0, 0x14
/* 80719AF0  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80719AF4  48 00 05 60 */	b lbl_8071A054
lbl_80719AF8:
/* 80719AF8  38 7A 0C 4C */	addi r3, r26, 0xc4c
/* 80719AFC  C0 3A 04 D8 */	lfs f1, 0x4d8(r26)
/* 80719B00  C0 5C 01 0C */	lfs f2, 0x10c(r28)
/* 80719B04  C0 7C 00 14 */	lfs f3, 0x14(r28)
/* 80719B08  4B B5 5F 34 */	b cLib_addCalc2__FPffff
/* 80719B0C  38 7A 0C 48 */	addi r3, r26, 0xc48
/* 80719B10  C0 3C 01 B8 */	lfs f1, 0x1b8(r28)
/* 80719B14  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80719B18  EC 21 00 2A */	fadds f1, f1, f0
/* 80719B1C  C0 5C 01 0C */	lfs f2, 0x10c(r28)
/* 80719B20  C0 7C 00 14 */	lfs f3, 0x14(r28)
/* 80719B24  4B B5 5F 18 */	b cLib_addCalc2__FPffff
/* 80719B28  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719B2C  2C 00 00 4A */	cmpwi r0, 0x4a
/* 80719B30  40 82 05 24 */	bne lbl_8071A054
/* 80719B34  38 00 00 2D */	li r0, 0x2d
/* 80719B38  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 80719B3C  38 00 00 00 */	li r0, 0
/* 80719B40  B0 1A 0C 34 */	sth r0, 0xc34(r26)
/* 80719B44  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80719B48  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80719B4C  80 63 00 00 */	lwz r3, 0(r3)
/* 80719B50  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80719B54  4B 8F 28 88 */	b mDoMtx_YrotS__FPA4_fs
/* 80719B58  C0 1C 00 F4 */	lfs f0, 0xf4(r28)
/* 80719B5C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80719B60  C0 1C 00 6C */	lfs f0, 0x6c(r28)
/* 80719B64  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80719B68  C0 1C 01 2C */	lfs f0, 0x12c(r28)
/* 80719B6C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80719B70  38 61 00 30 */	addi r3, r1, 0x30
/* 80719B74  38 9A 0C 38 */	addi r4, r26, 0xc38
/* 80719B78  4B B5 73 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 80719B7C  38 7A 0C 38 */	addi r3, r26, 0xc38
/* 80719B80  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80719B84  7C 65 1B 78 */	mr r5, r3
/* 80719B88  4B C2 D5 08 */	b PSVECAdd
/* 80719B8C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80719B90  D0 1A 0C 44 */	stfs f0, 0xc44(r26)
/* 80719B94  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80719B98  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719B9C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80719BA0  D0 1A 0C 4C */	stfs f0, 0xc4c(r26)
/* 80719BA4  C0 3A 0C 48 */	lfs f1, 0xc48(r26)
/* 80719BA8  C0 1C 01 BC */	lfs f0, 0x1bc(r28)
/* 80719BAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80719BB0  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719BB4  48 00 04 A0 */	b lbl_8071A054
lbl_80719BB8:
/* 80719BB8  38 7A 0C 4C */	addi r3, r26, 0xc4c
/* 80719BBC  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 80719BC0  C0 5C 01 0C */	lfs f2, 0x10c(r28)
/* 80719BC4  C0 7C 00 14 */	lfs f3, 0x14(r28)
/* 80719BC8  4B B5 5E 74 */	b cLib_addCalc2__FPffff
/* 80719BCC  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719BD0  1C 00 0A 00 */	mulli r0, r0, 0xa00
/* 80719BD4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80719BD8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80719BDC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80719BE0  7C 43 04 2E */	lfsx f2, r3, r0
/* 80719BE4  38 7A 0C 48 */	addi r3, r26, 0xc48
/* 80719BE8  C0 3C 01 BC */	lfs f1, 0x1bc(r28)
/* 80719BEC  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80719BF0  EC 21 00 2A */	fadds f1, f1, f0
/* 80719BF4  C0 1C 00 88 */	lfs f0, 0x88(r28)
/* 80719BF8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 80719BFC  EC 21 00 2A */	fadds f1, f1, f0
/* 80719C00  C0 5C 01 0C */	lfs f2, 0x10c(r28)
/* 80719C04  C0 7C 00 14 */	lfs f3, 0x14(r28)
/* 80719C08  4B B5 5E 34 */	b cLib_addCalc2__FPffff
/* 80719C0C  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719C10  2C 00 00 0A */	cmpwi r0, 0xa
/* 80719C14  40 82 00 0C */	bne lbl_80719C20
/* 80719C18  38 00 00 01 */	li r0, 1
/* 80719C1C  98 1F 05 67 */	stb r0, 0x567(r31)
lbl_80719C20:
/* 80719C20  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719C24  2C 00 00 37 */	cmpwi r0, 0x37
/* 80719C28  40 82 04 2C */	bne lbl_8071A054
/* 80719C2C  38 00 00 2E */	li r0, 0x2e
/* 80719C30  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 80719C34  38 00 00 00 */	li r0, 0
/* 80719C38  B0 1A 0C 34 */	sth r0, 0xc34(r26)
lbl_80719C3C:
/* 80719C3C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80719C40  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80719C44  80 63 00 00 */	lwz r3, 0(r3)
/* 80719C48  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 80719C4C  4B 8F 27 90 */	b mDoMtx_YrotS__FPA4_fs
/* 80719C50  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80719C54  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80719C58  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 80719C5C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80719C60  C0 1C 01 58 */	lfs f0, 0x158(r28)
/* 80719C64  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80719C68  38 61 00 30 */	addi r3, r1, 0x30
/* 80719C6C  38 9A 0C 38 */	addi r4, r26, 0xc38
/* 80719C70  4B B5 72 7C */	b MtxPosition__FP4cXyzP4cXyz
/* 80719C74  38 7A 0C 38 */	addi r3, r26, 0xc38
/* 80719C78  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80719C7C  7C 65 1B 78 */	mr r5, r3
/* 80719C80  4B C2 D4 10 */	b PSVECAdd
/* 80719C84  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80719C88  D0 1A 0C 44 */	stfs f0, 0xc44(r26)
/* 80719C8C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80719C90  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719C94  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80719C98  D0 1A 0C 4C */	stfs f0, 0xc4c(r26)
/* 80719C9C  C0 3A 0C 48 */	lfs f1, 0xc48(r26)
/* 80719CA0  C0 1C 01 B8 */	lfs f0, 0x1b8(r28)
/* 80719CA4  EC 01 00 2A */	fadds f0, f1, f0
/* 80719CA8  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719CAC  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719CB0  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80719CB4  41 80 03 A0 */	blt lbl_8071A054
/* 80719CB8  28 1E 00 00 */	cmplwi r30, 0
/* 80719CBC  41 82 03 98 */	beq lbl_8071A054
/* 80719CC0  38 00 00 05 */	li r0, 5
/* 80719CC4  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 80719CC8  38 00 00 00 */	li r0, 0
/* 80719CCC  B0 1A 0C 34 */	sth r0, 0xc34(r26)
lbl_80719CD0:
/* 80719CD0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80719CD4  D0 1A 0C 44 */	stfs f0, 0xc44(r26)
/* 80719CD8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80719CDC  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719CE0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80719CE4  D0 1A 0C 4C */	stfs f0, 0xc4c(r26)
/* 80719CE8  C0 1C 01 C0 */	lfs f0, 0x1c0(r28)
/* 80719CEC  D0 1A 0C 38 */	stfs f0, 0xc38(r26)
/* 80719CF0  C0 1C 01 C4 */	lfs f0, 0x1c4(r28)
/* 80719CF4  D0 1A 0C 3C */	stfs f0, 0xc3c(r26)
/* 80719CF8  C0 1C 01 C8 */	lfs f0, 0x1c8(r28)
/* 80719CFC  D0 1A 0C 40 */	stfs f0, 0xc40(r26)
/* 80719D00  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719D04  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80719D08  40 82 00 14 */	bne lbl_80719D1C
/* 80719D0C  C0 1C 01 CC */	lfs f0, 0x1cc(r28)
/* 80719D10  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80719D14  C0 1C 01 D0 */	lfs f0, 0x1d0(r28)
/* 80719D18  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80719D1C:
/* 80719D1C  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719D20  2C 00 00 45 */	cmpwi r0, 0x45
/* 80719D24  40 82 03 30 */	bne lbl_8071A054
/* 80719D28  38 00 00 06 */	li r0, 6
/* 80719D2C  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 80719D30  38 00 00 00 */	li r0, 0
/* 80719D34  B0 1A 0C 34 */	sth r0, 0xc34(r26)
/* 80719D38  48 00 03 1C */	b lbl_8071A054
lbl_80719D3C:
/* 80719D3C  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719D40  2C 00 00 03 */	cmpwi r0, 3
/* 80719D44  40 82 00 0C */	bne lbl_80719D50
/* 80719D48  38 00 00 04 */	li r0, 4
/* 80719D4C  B0 1F 05 EA */	sth r0, 0x5ea(r31)
lbl_80719D50:
/* 80719D50  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719D54  2C 00 00 19 */	cmpwi r0, 0x19
/* 80719D58  40 82 02 FC */	bne lbl_8071A054
/* 80719D5C  38 00 00 07 */	li r0, 7
/* 80719D60  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 80719D64  38 00 00 00 */	li r0, 0
/* 80719D68  B0 1A 0C 34 */	sth r0, 0xc34(r26)
/* 80719D6C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80719D70  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80719D74  80 63 00 00 */	lwz r3, 0(r3)
/* 80719D78  A8 9A 04 E6 */	lha r4, 0x4e6(r26)
/* 80719D7C  4B 8F 26 60 */	b mDoMtx_YrotS__FPA4_fs
/* 80719D80  C0 1C 00 F4 */	lfs f0, 0xf4(r28)
/* 80719D84  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80719D88  C0 1C 00 48 */	lfs f0, 0x48(r28)
/* 80719D8C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80719D90  C0 1C 01 D4 */	lfs f0, 0x1d4(r28)
/* 80719D94  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80719D98  38 61 00 30 */	addi r3, r1, 0x30
/* 80719D9C  38 9A 0C 38 */	addi r4, r26, 0xc38
/* 80719DA0  4B B5 71 4C */	b MtxPosition__FP4cXyzP4cXyz
/* 80719DA4  38 7A 0C 38 */	addi r3, r26, 0xc38
/* 80719DA8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80719DAC  7C 65 1B 78 */	mr r5, r3
/* 80719DB0  4B C2 D2 E0 */	b PSVECAdd
/* 80719DB4  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80719DB8  D0 1A 0C 44 */	stfs f0, 0xc44(r26)
/* 80719DBC  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80719DC0  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719DC4  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80719DC8  D0 1A 0C 4C */	stfs f0, 0xc4c(r26)
/* 80719DCC  C0 3A 0C 48 */	lfs f1, 0xc48(r26)
/* 80719DD0  C0 1C 01 44 */	lfs f0, 0x144(r28)
/* 80719DD4  EC 01 00 2A */	fadds f0, f1, f0
/* 80719DD8  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
lbl_80719DDC:
/* 80719DDC  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80719DE0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80719DE4  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80719DE8  C0 1C 00 BC */	lfs f0, 0xbc(r28)
/* 80719DEC  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80719DF0  C0 1C 01 D8 */	lfs f0, 0x1d8(r28)
/* 80719DF4  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80719DF8  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719DFC  2C 00 00 FA */	cmpwi r0, 0xfa
/* 80719E00  40 82 02 54 */	bne lbl_8071A054
/* 80719E04  38 00 00 08 */	li r0, 8
/* 80719E08  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 80719E0C  38 00 00 00 */	li r0, 0
/* 80719E10  B0 1A 0C 34 */	sth r0, 0xc34(r26)
/* 80719E14  A8 7F 05 EA */	lha r3, 0x5ea(r31)
/* 80719E18  38 03 00 01 */	addi r0, r3, 1
/* 80719E1C  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80719E20  C0 1C 01 DC */	lfs f0, 0x1dc(r28)
/* 80719E24  D0 1A 0C 38 */	stfs f0, 0xc38(r26)
/* 80719E28  C0 1C 01 E0 */	lfs f0, 0x1e0(r28)
/* 80719E2C  D0 1A 0C 3C */	stfs f0, 0xc3c(r26)
/* 80719E30  C0 1C 01 E4 */	lfs f0, 0x1e4(r28)
/* 80719E34  D0 1A 0C 40 */	stfs f0, 0xc40(r26)
/* 80719E38  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80719E3C  D0 1A 0C 44 */	stfs f0, 0xc44(r26)
/* 80719E40  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80719E44  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719E48  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80719E4C  D0 1A 0C 4C */	stfs f0, 0xc4c(r26)
lbl_80719E50:
/* 80719E50  38 7A 0C 48 */	addi r3, r26, 0xc48
/* 80719E54  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80719E58  C0 5C 01 0C */	lfs f2, 0x10c(r28)
/* 80719E5C  C0 7C 00 14 */	lfs f3, 0x14(r28)
/* 80719E60  4B B5 5B DC */	b cLib_addCalc2__FPffff
/* 80719E64  3C 60 80 72 */	lis r3, s_brg_sub__FPvPv@ha
/* 80719E68  38 63 94 E0 */	addi r3, r3, s_brg_sub__FPvPv@l
/* 80719E6C  7F 44 D3 78 */	mr r4, r26
/* 80719E70  4B 90 74 C8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80719E74  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719E78  2C 00 00 41 */	cmpwi r0, 0x41
/* 80719E7C  40 82 01 D8 */	bne lbl_8071A054
/* 80719E80  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80719E84  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80719E88  C0 1C 01 E8 */	lfs f0, 0x1e8(r28)
/* 80719E8C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80719E90  C0 1C 01 EC */	lfs f0, 0x1ec(r28)
/* 80719E94  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80719E98  A8 7F 05 EA */	lha r3, 0x5ea(r31)
/* 80719E9C  38 03 00 01 */	addi r0, r3, 1
/* 80719EA0  B0 1F 05 EA */	sth r0, 0x5ea(r31)
/* 80719EA4  38 00 00 09 */	li r0, 9
/* 80719EA8  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 80719EAC  38 00 00 00 */	li r0, 0
/* 80719EB0  B0 1A 0C 34 */	sth r0, 0xc34(r26)
/* 80719EB4  3C 60 80 72 */	lis r3, s_brg_sub2__FPvPv@ha
/* 80719EB8  38 63 95 40 */	addi r3, r3, s_brg_sub2__FPvPv@l
/* 80719EBC  7F 44 D3 78 */	mr r4, r26
/* 80719EC0  4B 90 74 78 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80719EC4  C0 1C 01 F0 */	lfs f0, 0x1f0(r28)
/* 80719EC8  D0 1A 0C 44 */	stfs f0, 0xc44(r26)
/* 80719ECC  C0 1C 01 F4 */	lfs f0, 0x1f4(r28)
/* 80719ED0  D0 1A 0C 48 */	stfs f0, 0xc48(r26)
/* 80719ED4  C0 1C 01 F8 */	lfs f0, 0x1f8(r28)
/* 80719ED8  D0 1A 0C 4C */	stfs f0, 0xc4c(r26)
/* 80719EDC  C0 1C 01 FC */	lfs f0, 0x1fc(r28)
/* 80719EE0  D0 1A 0C 38 */	stfs f0, 0xc38(r26)
/* 80719EE4  C0 1C 02 00 */	lfs f0, 0x200(r28)
/* 80719EE8  D0 1A 0C 3C */	stfs f0, 0xc3c(r26)
/* 80719EEC  C0 1C 02 04 */	lfs f0, 0x204(r28)
/* 80719EF0  D0 1A 0C 40 */	stfs f0, 0xc40(r26)
/* 80719EF4  38 00 00 01 */	li r0, 1
/* 80719EF8  90 19 06 14 */	stw r0, 0x614(r25)
/* 80719EFC  90 19 06 0C */	stw r0, 0x60c(r25)
/* 80719F00  38 00 00 00 */	li r0, 0
/* 80719F04  90 19 06 10 */	stw r0, 0x610(r25)
/* 80719F08  B0 19 06 0A */	sth r0, 0x60a(r25)
/* 80719F0C  48 00 01 48 */	b lbl_8071A054
lbl_80719F10:
/* 80719F10  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719F14  2C 00 00 8A */	cmpwi r0, 0x8a
/* 80719F18  40 82 01 3C */	bne lbl_8071A054
/* 80719F1C  C0 1C 00 88 */	lfs f0, 0x88(r28)
/* 80719F20  D0 1A 0C 44 */	stfs f0, 0xc44(r26)
/* 80719F24  C0 3C 02 08 */	lfs f1, 0x208(r28)
/* 80719F28  D0 3A 0C 48 */	stfs f1, 0xc48(r26)
/* 80719F2C  C0 1C 02 0C */	lfs f0, 0x20c(r28)
/* 80719F30  D0 1A 0C 4C */	stfs f0, 0xc4c(r26)
/* 80719F34  C0 1C 02 10 */	lfs f0, 0x210(r28)
/* 80719F38  D0 1A 0C 38 */	stfs f0, 0xc38(r26)
/* 80719F3C  D0 3A 0C 3C */	stfs f1, 0xc3c(r26)
/* 80719F40  C0 1C 02 14 */	lfs f0, 0x214(r28)
/* 80719F44  D0 1A 0C 40 */	stfs f0, 0xc40(r26)
/* 80719F48  38 00 00 0A */	li r0, 0xa
/* 80719F4C  B0 1A 0C 32 */	sth r0, 0xc32(r26)
/* 80719F50  38 00 00 00 */	li r0, 0
/* 80719F54  B0 1A 0C 34 */	sth r0, 0xc34(r26)
/* 80719F58  A8 19 04 E6 */	lha r0, 0x4e6(r25)
/* 80719F5C  B0 1A 0C A0 */	sth r0, 0xca0(r26)
/* 80719F60  48 00 00 F4 */	b lbl_8071A054
lbl_80719F64:
/* 80719F64  38 7A 0C A0 */	addi r3, r26, 0xca0
/* 80719F68  A8 9F 05 C8 */	lha r4, 0x5c8(r31)
/* 80719F6C  3C 84 00 01 */	addis r4, r4, 1
/* 80719F70  38 04 80 00 */	addi r0, r4, -32768
/* 80719F74  7C 04 07 34 */	extsh r4, r0
/* 80719F78  38 A0 00 04 */	li r5, 4
/* 80719F7C  38 C0 08 00 */	li r6, 0x800
/* 80719F80  4B B5 66 88 */	b cLib_addCalcAngleS2__FPssss
/* 80719F84  7F 23 CB 78 */	mr r3, r25
/* 80719F88  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80719F8C  A8 BA 0C A0 */	lha r5, 0xca0(r26)
/* 80719F90  38 C0 00 00 */	li r6, 0
/* 80719F94  81 99 06 28 */	lwz r12, 0x628(r25)
/* 80719F98  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80719F9C  7D 89 03 A6 */	mtctr r12
/* 80719FA0  4E 80 04 21 */	bctrl 
/* 80719FA4  A8 1A 0C 34 */	lha r0, 0xc34(r26)
/* 80719FA8  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80719FAC  40 82 00 A8 */	bne lbl_8071A054
/* 80719FB0  C0 1A 0C 44 */	lfs f0, 0xc44(r26)
/* 80719FB4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80719FB8  C0 1A 0C 48 */	lfs f0, 0xc48(r26)
/* 80719FBC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80719FC0  C0 1A 0C 4C */	lfs f0, 0xc4c(r26)
/* 80719FC4  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80719FC8  C0 1A 0C 38 */	lfs f0, 0xc38(r26)
/* 80719FCC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80719FD0  C0 1A 0C 3C */	lfs f0, 0xc3c(r26)
/* 80719FD4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80719FD8  C0 1A 0C 40 */	lfs f0, 0xc40(r26)
/* 80719FDC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80719FE0  38 7B 02 48 */	addi r3, r27, 0x248
/* 80719FE4  38 81 00 18 */	addi r4, r1, 0x18
/* 80719FE8  38 A1 00 0C */	addi r5, r1, 0xc
/* 80719FEC  4B A6 6C 2C */	b Reset__9dCamera_cF4cXyz4cXyz
/* 80719FF0  38 7B 02 48 */	addi r3, r27, 0x248
/* 80719FF4  4B A4 74 B8 */	b Start__9dCamera_cFv
/* 80719FF8  38 7B 02 48 */	addi r3, r27, 0x248
/* 80719FFC  38 80 00 00 */	li r4, 0
/* 8071A000  4B A4 90 0C */	b SetTrimSize__9dCamera_cFl
/* 8071A004  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071A008  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071A00C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8071A010  4B 92 84 58 */	b reset__14dEvt_control_cFv
/* 8071A014  80 7D 5D AC */	lwz r3, 0x5dac(r29)
/* 8071A018  38 00 00 02 */	li r0, 2
/* 8071A01C  B0 03 06 04 */	sth r0, 0x604(r3)
/* 8071A020  38 00 00 01 */	li r0, 1
/* 8071A024  90 03 06 14 */	stw r0, 0x614(r3)
/* 8071A028  7F 43 D3 78 */	mr r3, r26
/* 8071A02C  4B 8F FC 50 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8071A030  80 1A 00 B0 */	lwz r0, 0xb0(r26)
/* 8071A034  54 04 86 3E */	rlwinm r4, r0, 0x10, 0x18, 0x1f
/* 8071A038  28 04 00 FF */	cmplwi r4, 0xff
/* 8071A03C  41 82 00 18 */	beq lbl_8071A054
/* 8071A040  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071A044  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071A048  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 8071A04C  7C 05 07 74 */	extsb r5, r0
/* 8071A050  4B 91 B1 B0 */	b onSwitch__10dSv_info_cFii
lbl_8071A054:
/* 8071A054  39 61 00 60 */	addi r11, r1, 0x60
/* 8071A058  4B C4 81 C0 */	b _restgpr_25
/* 8071A05C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8071A060  7C 08 03 A6 */	mtlr r0
/* 8071A064  38 21 00 60 */	addi r1, r1, 0x60
/* 8071A068  4E 80 00 20 */	blr 

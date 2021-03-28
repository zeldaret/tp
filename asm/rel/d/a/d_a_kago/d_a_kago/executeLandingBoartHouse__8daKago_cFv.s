lbl_80851DEC:
/* 80851DEC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80851DF0  7C 08 02 A6 */	mflr r0
/* 80851DF4  90 01 00 64 */	stw r0, 0x64(r1)
/* 80851DF8  39 61 00 60 */	addi r11, r1, 0x60
/* 80851DFC  4B B1 03 E0 */	b _savegpr_29
/* 80851E00  7C 7D 1B 78 */	mr r29, r3
/* 80851E04  3C 60 80 85 */	lis r3, lit_3929@ha
/* 80851E08  3B E3 4B 04 */	addi r31, r3, lit_3929@l
/* 80851E0C  4B 92 F8 34 */	b dCam_getBody__Fv
/* 80851E10  7C 7E 1B 78 */	mr r30, r3
/* 80851E14  80 1D 07 44 */	lwz r0, 0x744(r29)
/* 80851E18  2C 00 00 03 */	cmpwi r0, 3
/* 80851E1C  41 82 03 54 */	beq lbl_80852170
/* 80851E20  40 80 00 1C */	bge lbl_80851E3C
/* 80851E24  2C 00 00 01 */	cmpwi r0, 1
/* 80851E28  41 82 01 68 */	beq lbl_80851F90
/* 80851E2C  40 80 02 70 */	bge lbl_8085209C
/* 80851E30  2C 00 00 00 */	cmpwi r0, 0
/* 80851E34  40 80 00 14 */	bge lbl_80851E48
/* 80851E38  48 00 07 18 */	b lbl_80852550
lbl_80851E3C:
/* 80851E3C  2C 00 00 0A */	cmpwi r0, 0xa
/* 80851E40  41 82 00 70 */	beq lbl_80851EB0
/* 80851E44  48 00 07 0C */	b lbl_80852550
lbl_80851E48:
/* 80851E48  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 80851E4C  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80851E50  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 80851E54  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80851E58  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 80851E5C  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80851E60  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80851E64  28 00 00 02 */	cmplwi r0, 2
/* 80851E68  41 82 00 2C */	beq lbl_80851E94
/* 80851E6C  7F A3 EB 78 */	mr r3, r29
/* 80851E70  38 80 00 02 */	li r4, 2
/* 80851E74  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80851E78  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80851E7C  38 C0 00 03 */	li r6, 3
/* 80851E80  4B 7C 9A 88 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80851E84  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80851E88  60 00 00 02 */	ori r0, r0, 2
/* 80851E8C  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80851E90  48 00 07 08 */	b lbl_80852598
lbl_80851E94:
/* 80851E94  4B 90 F6 3C */	b Stop__9dCamera_cFv
/* 80851E98  7F C3 F3 78 */	mr r3, r30
/* 80851E9C  38 80 00 03 */	li r4, 3
/* 80851EA0  4B 91 11 6C */	b SetTrimSize__9dCamera_cFl
/* 80851EA4  38 00 00 0A */	li r0, 0xa
/* 80851EA8  90 1D 07 44 */	stw r0, 0x744(r29)
/* 80851EAC  48 00 06 A4 */	b lbl_80852550
lbl_80851EB0:
/* 80851EB0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80851EB4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80851EB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80851EBC  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80851EC0  80 9D 07 60 */	lwz r4, 0x760(r29)
/* 80851EC4  4B A6 43 24 */	b setDemoName__11Z2StatusMgrFPc
/* 80851EC8  C0 1F 01 D4 */	lfs f0, 0x1d4(r31)
/* 80851ECC  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80851ED0  C0 1F 01 D8 */	lfs f0, 0x1d8(r31)
/* 80851ED4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80851ED8  C0 1F 01 DC */	lfs f0, 0x1dc(r31)
/* 80851EDC  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80851EE0  7F A3 EB 78 */	mr r3, r29
/* 80851EE4  38 80 00 0F */	li r4, 0xf
/* 80851EE8  38 A0 00 02 */	li r5, 2
/* 80851EEC  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80851EF0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 80851EF4  4B FF 77 FD */	bl setBck__8daKago_cFiUcff
/* 80851EF8  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80851EFC  D0 1D 06 98 */	stfs f0, 0x698(r29)
/* 80851F00  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80851F04  D0 3D 06 9C */	stfs f1, 0x69c(r29)
/* 80851F08  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 80851F0C  D0 1D 06 A0 */	stfs f0, 0x6a0(r29)
/* 80851F10  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80851F14  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 80851F18  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80851F1C  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 80851F20  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80851F24  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 80851F28  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80851F2C  D0 1D 06 D4 */	stfs f0, 0x6d4(r29)
/* 80851F30  C0 1F 01 E4 */	lfs f0, 0x1e4(r31)
/* 80851F34  D0 1D 06 A4 */	stfs f0, 0x6a4(r29)
/* 80851F38  D0 3D 06 A8 */	stfs f1, 0x6a8(r29)
/* 80851F3C  C0 1F 01 E8 */	lfs f0, 0x1e8(r31)
/* 80851F40  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 80851F44  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80851F48  38 9D 06 A4 */	addi r4, r29, 0x6a4
/* 80851F4C  4B A1 ED 28 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80851F50  7C 03 00 D0 */	neg r0, r3
/* 80851F54  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80851F58  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80851F5C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80851F60  38 9D 06 A4 */	addi r4, r29, 0x6a4
/* 80851F64  4B A1 EC A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80851F68  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80851F6C  B0 7D 04 E6 */	sth r3, 0x4e6(r29)
/* 80851F70  38 00 00 01 */	li r0, 1
/* 80851F74  90 1D 07 44 */	stw r0, 0x744(r29)
/* 80851F78  38 00 00 00 */	li r0, 0
/* 80851F7C  B0 1D 07 12 */	sth r0, 0x712(r29)
/* 80851F80  38 00 00 50 */	li r0, 0x50
/* 80851F84  90 1D 07 28 */	stw r0, 0x728(r29)
/* 80851F88  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 80851F8C  D0 1D 06 F8 */	stfs f0, 0x6f8(r29)
lbl_80851F90:
/* 80851F90  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 80851F94  2C 00 00 46 */	cmpwi r0, 0x46
/* 80851F98  40 82 00 64 */	bne lbl_80851FFC
/* 80851F9C  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 80851FA0  28 00 00 01 */	cmplwi r0, 1
/* 80851FA4  40 82 00 30 */	bne lbl_80851FD4
/* 80851FA8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B9@ha */
/* 80851FAC  38 03 05 B9 */	addi r0, r3, 0x05B9 /* 0x000705B9@l */
/* 80851FB0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80851FB4  38 7D 05 74 */	addi r3, r29, 0x574
/* 80851FB8  38 81 00 1C */	addi r4, r1, 0x1c
/* 80851FBC  38 A0 FF FF */	li r5, -1
/* 80851FC0  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80851FC4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80851FC8  7D 89 03 A6 */	mtctr r12
/* 80851FCC  4E 80 04 21 */	bctrl 
/* 80851FD0  48 00 00 2C */	b lbl_80851FFC
lbl_80851FD4:
/* 80851FD4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B8@ha */
/* 80851FD8  38 03 05 B8 */	addi r0, r3, 0x05B8 /* 0x000705B8@l */
/* 80851FDC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80851FE0  38 7D 05 74 */	addi r3, r29, 0x574
/* 80851FE4  38 81 00 18 */	addi r4, r1, 0x18
/* 80851FE8  38 A0 FF FF */	li r5, -1
/* 80851FEC  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80851FF0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80851FF4  7D 89 03 A6 */	mtctr r12
/* 80851FF8  4E 80 04 21 */	bctrl 
lbl_80851FFC:
/* 80851FFC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80852000  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 80852004  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80852008  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 8085200C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80852010  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 80852014  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80852018  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 8085201C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80852020  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80852024  7C 64 02 14 */	add r3, r4, r0
/* 80852028  C0 03 00 04 */	lfs f0, 4(r3)
/* 8085202C  FC 00 02 10 */	fabs f0, f0
/* 80852030  FC 20 00 18 */	frsp f1, f0
/* 80852034  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80852038  EC 00 00 72 */	fmuls f0, f0, f1
/* 8085203C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80852040  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 80852044  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80852048  7C 24 04 2E */	lfsx f1, r4, r0
/* 8085204C  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80852050  FC 00 00 50 */	fneg f0, f0
/* 80852054  EC 00 00 72 */	fmuls f0, f0, f1
/* 80852058  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8085205C  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 80852060  2C 00 00 00 */	cmpwi r0, 0
/* 80852064  40 82 00 14 */	bne lbl_80852078
/* 80852068  38 00 00 02 */	li r0, 2
/* 8085206C  90 1D 07 44 */	stw r0, 0x744(r29)
/* 80852070  38 00 00 28 */	li r0, 0x28
/* 80852074  90 1D 07 28 */	stw r0, 0x728(r29)
lbl_80852078:
/* 80852078  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8085207C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80852080  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80852084  7F A4 EB 78 */	mr r4, r29
/* 80852088  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 8085208C  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 80852090  38 C0 00 09 */	li r6, 9
/* 80852094  4B 7F 08 80 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
/* 80852098  48 00 04 B8 */	b lbl_80852550
lbl_8085209C:
/* 8085209C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 808520A0  D0 1D 06 8C */	stfs f0, 0x68c(r29)
/* 808520A4  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 808520A8  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 808520AC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 808520B0  D0 1D 06 94 */	stfs f0, 0x694(r29)
/* 808520B4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 808520B8  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 808520BC  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 808520C0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808520C4  7C 64 02 14 */	add r3, r4, r0
/* 808520C8  C0 03 00 04 */	lfs f0, 4(r3)
/* 808520CC  FC 00 02 10 */	fabs f0, f0
/* 808520D0  FC 20 00 18 */	frsp f1, f0
/* 808520D4  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 808520D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 808520DC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 808520E0  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 808520E4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808520E8  7C 24 04 2E */	lfsx f1, r4, r0
/* 808520EC  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 808520F0  FC 00 00 50 */	fneg f0, f0
/* 808520F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 808520F8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 808520FC  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80852100  38 80 00 00 */	li r4, 0
/* 80852104  38 A0 00 80 */	li r5, 0x80
/* 80852108  4B A1 EA 88 */	b cLib_chaseAngleS__FPsss
/* 8085210C  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80852110  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 80852114  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 80852118  2C 00 00 00 */	cmpwi r0, 0
/* 8085211C  40 82 00 20 */	bne lbl_8085213C
/* 80852120  7F A3 EB 78 */	mr r3, r29
/* 80852124  4B FF 8A A5 */	bl setRideOff__8daKago_cFv
/* 80852128  38 00 00 03 */	li r0, 3
/* 8085212C  90 1D 07 44 */	stw r0, 0x744(r29)
/* 80852130  38 00 00 5A */	li r0, 0x5a
/* 80852134  90 1D 07 28 */	stw r0, 0x728(r29)
/* 80852138  48 00 00 24 */	b lbl_8085215C
lbl_8085213C:
/* 8085213C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80852140  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80852144  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80852148  7F A4 EB 78 */	mr r4, r29
/* 8085214C  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 80852150  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 80852154  38 C0 00 09 */	li r6, 9
/* 80852158  4B 7F 07 BC */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_8085215C:
/* 8085215C  C0 1F 00 D8 */	lfs f0, 0xd8(r31)
/* 80852160  D0 1D 06 CC */	stfs f0, 0x6cc(r29)
/* 80852164  C0 1F 01 EC */	lfs f0, 0x1ec(r31)
/* 80852168  D0 1D 06 D0 */	stfs f0, 0x6d0(r29)
/* 8085216C  48 00 03 E4 */	b lbl_80852550
lbl_80852170:
/* 80852170  C0 1F 01 F0 */	lfs f0, 0x1f0(r31)
/* 80852174  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80852178  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8085217C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80852180  C0 1F 01 40 */	lfs f0, 0x140(r31)
/* 80852184  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80852188  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8085218C  38 81 00 38 */	addi r4, r1, 0x38
/* 80852190  C0 3D 06 CC */	lfs f1, 0x6cc(r29)
/* 80852194  4B A1 E6 18 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 80852198  38 7D 06 8C */	addi r3, r29, 0x68c
/* 8085219C  38 81 00 38 */	addi r4, r1, 0x38
/* 808521A0  4B AF 51 FC */	b PSVECSquareDistance
/* 808521A4  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 808521A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808521AC  40 81 00 58 */	ble lbl_80852204
/* 808521B0  FC 00 08 34 */	frsqrte f0, f1
/* 808521B4  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 808521B8  FC 44 00 32 */	fmul f2, f4, f0
/* 808521BC  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 808521C0  FC 00 00 32 */	fmul f0, f0, f0
/* 808521C4  FC 01 00 32 */	fmul f0, f1, f0
/* 808521C8  FC 03 00 28 */	fsub f0, f3, f0
/* 808521CC  FC 02 00 32 */	fmul f0, f2, f0
/* 808521D0  FC 44 00 32 */	fmul f2, f4, f0
/* 808521D4  FC 00 00 32 */	fmul f0, f0, f0
/* 808521D8  FC 01 00 32 */	fmul f0, f1, f0
/* 808521DC  FC 03 00 28 */	fsub f0, f3, f0
/* 808521E0  FC 02 00 32 */	fmul f0, f2, f0
/* 808521E4  FC 44 00 32 */	fmul f2, f4, f0
/* 808521E8  FC 00 00 32 */	fmul f0, f0, f0
/* 808521EC  FC 01 00 32 */	fmul f0, f1, f0
/* 808521F0  FC 03 00 28 */	fsub f0, f3, f0
/* 808521F4  FC 02 00 32 */	fmul f0, f2, f0
/* 808521F8  FC 21 00 32 */	fmul f1, f1, f0
/* 808521FC  FC 20 08 18 */	frsp f1, f1
/* 80852200  48 00 00 88 */	b lbl_80852288
lbl_80852204:
/* 80852204  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 80852208  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8085220C  40 80 00 10 */	bge lbl_8085221C
/* 80852210  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80852214  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80852218  48 00 00 70 */	b lbl_80852288
lbl_8085221C:
/* 8085221C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80852220  80 81 00 0C */	lwz r4, 0xc(r1)
/* 80852224  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80852228  3C 00 7F 80 */	lis r0, 0x7f80
/* 8085222C  7C 03 00 00 */	cmpw r3, r0
/* 80852230  41 82 00 14 */	beq lbl_80852244
/* 80852234  40 80 00 40 */	bge lbl_80852274
/* 80852238  2C 03 00 00 */	cmpwi r3, 0
/* 8085223C  41 82 00 20 */	beq lbl_8085225C
/* 80852240  48 00 00 34 */	b lbl_80852274
lbl_80852244:
/* 80852244  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80852248  41 82 00 0C */	beq lbl_80852254
/* 8085224C  38 00 00 01 */	li r0, 1
/* 80852250  48 00 00 28 */	b lbl_80852278
lbl_80852254:
/* 80852254  38 00 00 02 */	li r0, 2
/* 80852258  48 00 00 20 */	b lbl_80852278
lbl_8085225C:
/* 8085225C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80852260  41 82 00 0C */	beq lbl_8085226C
/* 80852264  38 00 00 05 */	li r0, 5
/* 80852268  48 00 00 10 */	b lbl_80852278
lbl_8085226C:
/* 8085226C  38 00 00 03 */	li r0, 3
/* 80852270  48 00 00 08 */	b lbl_80852278
lbl_80852274:
/* 80852274  38 00 00 04 */	li r0, 4
lbl_80852278:
/* 80852278  2C 00 00 01 */	cmpwi r0, 1
/* 8085227C  40 82 00 0C */	bne lbl_80852288
/* 80852280  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80852284  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80852288:
/* 80852288  C0 1F 00 60 */	lfs f0, 0x60(r31)
/* 8085228C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80852290  40 80 00 14 */	bge lbl_808522A4
/* 80852294  38 7D 06 CC */	addi r3, r29, 0x6cc
/* 80852298  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 8085229C  C0 5F 00 24 */	lfs f2, 0x24(r31)
/* 808522A0  4B A1 E4 A0 */	b cLib_chaseF__FPfff
lbl_808522A4:
/* 808522A4  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 808522A8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 808522AC  C0 1F 01 F8 */	lfs f0, 0x1f8(r31)
/* 808522B0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 808522B4  C0 1F 01 FC */	lfs f0, 0x1fc(r31)
/* 808522B8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 808522BC  38 7D 06 98 */	addi r3, r29, 0x698
/* 808522C0  38 81 00 38 */	addi r4, r1, 0x38
/* 808522C4  C0 3D 06 D0 */	lfs f1, 0x6d0(r29)
/* 808522C8  4B A1 E4 E4 */	b cLib_chasePos__FP4cXyzRC4cXyzf
/* 808522CC  38 7D 06 98 */	addi r3, r29, 0x698
/* 808522D0  38 81 00 38 */	addi r4, r1, 0x38
/* 808522D4  4B AF 50 C8 */	b PSVECSquareDistance
/* 808522D8  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 808522DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808522E0  40 81 00 58 */	ble lbl_80852338
/* 808522E4  FC 00 08 34 */	frsqrte f0, f1
/* 808522E8  C8 9F 00 48 */	lfd f4, 0x48(r31)
/* 808522EC  FC 44 00 32 */	fmul f2, f4, f0
/* 808522F0  C8 7F 00 50 */	lfd f3, 0x50(r31)
/* 808522F4  FC 00 00 32 */	fmul f0, f0, f0
/* 808522F8  FC 01 00 32 */	fmul f0, f1, f0
/* 808522FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80852300  FC 02 00 32 */	fmul f0, f2, f0
/* 80852304  FC 44 00 32 */	fmul f2, f4, f0
/* 80852308  FC 00 00 32 */	fmul f0, f0, f0
/* 8085230C  FC 01 00 32 */	fmul f0, f1, f0
/* 80852310  FC 03 00 28 */	fsub f0, f3, f0
/* 80852314  FC 02 00 32 */	fmul f0, f2, f0
/* 80852318  FC 44 00 32 */	fmul f2, f4, f0
/* 8085231C  FC 00 00 32 */	fmul f0, f0, f0
/* 80852320  FC 01 00 32 */	fmul f0, f1, f0
/* 80852324  FC 03 00 28 */	fsub f0, f3, f0
/* 80852328  FC 02 00 32 */	fmul f0, f2, f0
/* 8085232C  FC 21 00 32 */	fmul f1, f1, f0
/* 80852330  FC 20 08 18 */	frsp f1, f1
/* 80852334  48 00 00 88 */	b lbl_808523BC
lbl_80852338:
/* 80852338  C8 1F 00 58 */	lfd f0, 0x58(r31)
/* 8085233C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80852340  40 80 00 10 */	bge lbl_80852350
/* 80852344  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80852348  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8085234C  48 00 00 70 */	b lbl_808523BC
lbl_80852350:
/* 80852350  D0 21 00 08 */	stfs f1, 8(r1)
/* 80852354  80 81 00 08 */	lwz r4, 8(r1)
/* 80852358  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8085235C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80852360  7C 03 00 00 */	cmpw r3, r0
/* 80852364  41 82 00 14 */	beq lbl_80852378
/* 80852368  40 80 00 40 */	bge lbl_808523A8
/* 8085236C  2C 03 00 00 */	cmpwi r3, 0
/* 80852370  41 82 00 20 */	beq lbl_80852390
/* 80852374  48 00 00 34 */	b lbl_808523A8
lbl_80852378:
/* 80852378  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8085237C  41 82 00 0C */	beq lbl_80852388
/* 80852380  38 00 00 01 */	li r0, 1
/* 80852384  48 00 00 28 */	b lbl_808523AC
lbl_80852388:
/* 80852388  38 00 00 02 */	li r0, 2
/* 8085238C  48 00 00 20 */	b lbl_808523AC
lbl_80852390:
/* 80852390  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80852394  41 82 00 0C */	beq lbl_808523A0
/* 80852398  38 00 00 05 */	li r0, 5
/* 8085239C  48 00 00 10 */	b lbl_808523AC
lbl_808523A0:
/* 808523A0  38 00 00 03 */	li r0, 3
/* 808523A4  48 00 00 08 */	b lbl_808523AC
lbl_808523A8:
/* 808523A8  38 00 00 04 */	li r0, 4
lbl_808523AC:
/* 808523AC  2C 00 00 01 */	cmpwi r0, 1
/* 808523B0  40 82 00 0C */	bne lbl_808523BC
/* 808523B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 808523B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_808523BC:
/* 808523BC  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 808523C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 808523C4  40 80 00 18 */	bge lbl_808523DC
/* 808523C8  38 7D 06 D0 */	addi r3, r29, 0x6d0
/* 808523CC  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 808523D0  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 808523D4  4B A1 E3 6C */	b cLib_chaseF__FPfff
/* 808523D8  48 00 00 14 */	b lbl_808523EC
lbl_808523DC:
/* 808523DC  38 7D 06 D0 */	addi r3, r29, 0x6d0
/* 808523E0  C0 3F 01 EC */	lfs f1, 0x1ec(r31)
/* 808523E4  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 808523E8  4B A1 E3 58 */	b cLib_chaseF__FPfff
lbl_808523EC:
/* 808523EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 808523F0  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 808523F4  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 808523F8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808523FC  7C 64 02 14 */	add r3, r4, r0
/* 80852400  C0 03 00 04 */	lfs f0, 4(r3)
/* 80852404  FC 00 02 10 */	fabs f0, f0
/* 80852408  FC 20 00 18 */	frsp f1, f0
/* 8085240C  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80852410  EC 00 00 72 */	fmuls f0, f0, f1
/* 80852414  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80852418  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8085241C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80852420  7C 24 04 2E */	lfsx f1, r4, r0
/* 80852424  C0 1D 06 F8 */	lfs f0, 0x6f8(r29)
/* 80852428  FC 00 00 50 */	fneg f0, f0
/* 8085242C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80852430  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80852434  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 80852438  38 80 E0 00 */	li r4, -8192
/* 8085243C  38 A0 01 00 */	li r5, 0x100
/* 80852440  4B A1 E7 50 */	b cLib_chaseAngleS__FPsss
/* 80852444  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80852448  B0 1D 04 DC */	sth r0, 0x4dc(r29)
/* 8085244C  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 80852450  2C 00 00 50 */	cmpwi r0, 0x50
/* 80852454  40 82 00 64 */	bne lbl_808524B8
/* 80852458  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 8085245C  28 00 00 01 */	cmplwi r0, 1
/* 80852460  40 82 00 30 */	bne lbl_80852490
/* 80852464  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B9@ha */
/* 80852468  38 03 05 B9 */	addi r0, r3, 0x05B9 /* 0x000705B9@l */
/* 8085246C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80852470  38 7D 05 74 */	addi r3, r29, 0x574
/* 80852474  38 81 00 14 */	addi r4, r1, 0x14
/* 80852478  38 A0 FF FF */	li r5, -1
/* 8085247C  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 80852480  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80852484  7D 89 03 A6 */	mtctr r12
/* 80852488  4E 80 04 21 */	bctrl 
/* 8085248C  48 00 00 2C */	b lbl_808524B8
lbl_80852490:
/* 80852490  3C 60 00 07 */	lis r3, 0x0007 /* 0x000705B8@ha */
/* 80852494  38 03 05 B8 */	addi r0, r3, 0x05B8 /* 0x000705B8@l */
/* 80852498  90 01 00 10 */	stw r0, 0x10(r1)
/* 8085249C  38 7D 05 74 */	addi r3, r29, 0x574
/* 808524A0  38 81 00 10 */	addi r4, r1, 0x10
/* 808524A4  38 A0 FF FF */	li r5, -1
/* 808524A8  81 9D 05 74 */	lwz r12, 0x574(r29)
/* 808524AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 808524B0  7D 89 03 A6 */	mtctr r12
/* 808524B4  4E 80 04 21 */	bctrl 
lbl_808524B8:
/* 808524B8  80 1D 07 28 */	lwz r0, 0x728(r29)
/* 808524BC  2C 00 00 00 */	cmpwi r0, 0
/* 808524C0  40 82 00 70 */	bne lbl_80852530
/* 808524C4  7F A3 EB 78 */	mr r3, r29
/* 808524C8  38 80 00 04 */	li r4, 4
/* 808524CC  38 A0 00 00 */	li r5, 0
/* 808524D0  4B FF 85 C9 */	bl setActionMode__8daKago_cFii
/* 808524D4  88 1D 06 E7 */	lbz r0, 0x6e7(r29)
/* 808524D8  28 00 00 01 */	cmplwi r0, 1
/* 808524DC  40 82 00 0C */	bne lbl_808524E8
/* 808524E0  38 00 00 78 */	li r0, 0x78
/* 808524E4  90 1D 07 28 */	stw r0, 0x728(r29)
lbl_808524E8:
/* 808524E8  7F C3 F3 78 */	mr r3, r30
/* 808524EC  4B 92 E7 7C */	b Reset__9dCamera_cFv
/* 808524F0  7F C3 F3 78 */	mr r3, r30
/* 808524F4  4B 90 EF B8 */	b Start__9dCamera_cFv
/* 808524F8  7F C3 F3 78 */	mr r3, r30
/* 808524FC  38 80 00 00 */	li r4, 0
/* 80852500  4B 91 0B 0C */	b SetTrimSize__9dCamera_cFl
/* 80852504  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80852508  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8085250C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80852510  4B 7E FF 58 */	b reset__14dEvt_control_cFv
/* 80852514  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80852518  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8085251C  80 63 00 00 */	lwz r3, 0(r3)
/* 80852520  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80852524  38 80 00 00 */	li r4, 0
/* 80852528  4B A6 3C C0 */	b setDemoName__11Z2StatusMgrFPc
/* 8085252C  48 00 00 6C */	b lbl_80852598
lbl_80852530:
/* 80852530  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80852534  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80852538  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8085253C  7F A4 EB 78 */	mr r4, r29
/* 80852540  3C A0 80 85 */	lis r5, DemoSkipCallBack__8daKago_cFPvi@ha
/* 80852544  38 A5 AA 64 */	addi r5, r5, DemoSkipCallBack__8daKago_cFPvi@l
/* 80852548  38 C0 00 0A */	li r6, 0xa
/* 8085254C  4B 7F 03 C8 */	b setSkipProc__14dEvt_control_cFPvPFPvi_ii
lbl_80852550:
/* 80852550  C0 1D 06 8C */	lfs f0, 0x68c(r29)
/* 80852554  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80852558  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 8085255C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80852560  C0 1D 06 94 */	lfs f0, 0x694(r29)
/* 80852564  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80852568  C0 1D 06 98 */	lfs f0, 0x698(r29)
/* 8085256C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80852570  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 80852574  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80852578  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 8085257C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80852580  7F C3 F3 78 */	mr r3, r30
/* 80852584  38 81 00 2C */	addi r4, r1, 0x2c
/* 80852588  38 A1 00 20 */	addi r5, r1, 0x20
/* 8085258C  C0 3D 06 D4 */	lfs f1, 0x6d4(r29)
/* 80852590  38 C0 00 00 */	li r6, 0
/* 80852594  4B 92 E5 4C */	b Set__9dCamera_cF4cXyz4cXyzfs
lbl_80852598:
/* 80852598  39 61 00 60 */	addi r11, r1, 0x60
/* 8085259C  4B B0 FC 8C */	b _restgpr_29
/* 808525A0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 808525A4  7C 08 03 A6 */	mtlr r0
/* 808525A8  38 21 00 60 */	addi r1, r1, 0x60
/* 808525AC  4E 80 00 20 */	blr 

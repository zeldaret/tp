lbl_80822F0C:
/* 80822F0C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80822F10  7C 08 02 A6 */	mflr r0
/* 80822F14  90 01 00 74 */	stw r0, 0x74(r1)
/* 80822F18  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80822F1C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80822F20  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80822F24  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80822F28  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 80822F2C  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 80822F30  39 61 00 40 */	addi r11, r1, 0x40
/* 80822F34  4B B3 F2 A0 */	b _savegpr_27
/* 80822F38  7C 7F 1B 78 */	mr r31, r3
/* 80822F3C  3C 60 80 83 */	lis r3, lit_3902@ha
/* 80822F40  3B C3 88 50 */	addi r30, r3, lit_3902@l
/* 80822F44  C0 3F 06 80 */	lfs f1, 0x680(r31)
/* 80822F48  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80822F4C  EF E1 00 28 */	fsubs f31, f1, f0
/* 80822F50  C0 3F 06 84 */	lfs f1, 0x684(r31)
/* 80822F54  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80822F58  EF C1 00 28 */	fsubs f30, f1, f0
/* 80822F5C  C0 3F 06 88 */	lfs f1, 0x688(r31)
/* 80822F60  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80822F64  EF A1 00 28 */	fsubs f29, f1, f0
/* 80822F68  FC 20 F8 90 */	fmr f1, f31
/* 80822F6C  FC 40 E8 90 */	fmr f2, f29
/* 80822F70  4B A4 47 04 */	b cM_atan2s__Fff
/* 80822F74  7C 7D 1B 78 */	mr r29, r3
/* 80822F78  EC 3F 07 F2 */	fmuls f1, f31, f31
/* 80822F7C  EC 1D 07 72 */	fmuls f0, f29, f29
/* 80822F80  EC 41 00 2A */	fadds f2, f1, f0
/* 80822F84  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80822F88  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80822F8C  40 81 00 0C */	ble lbl_80822F98
/* 80822F90  FC 00 10 34 */	frsqrte f0, f2
/* 80822F94  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80822F98:
/* 80822F98  FC 20 F0 90 */	fmr f1, f30
/* 80822F9C  4B A4 46 D8 */	b cM_atan2s__Fff
/* 80822FA0  7C 03 00 D0 */	neg r0, r3
/* 80822FA4  7C 1C 07 34 */	extsh r28, r0
/* 80822FA8  AB 7F 04 DE */	lha r27, 0x4de(r31)
/* 80822FAC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80822FB0  7F A4 EB 78 */	mr r4, r29
/* 80822FB4  38 A0 00 0A */	li r5, 0xa
/* 80822FB8  C0 3F 06 9C */	lfs f1, 0x69c(r31)
/* 80822FBC  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80822FC0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80822FC4  FC 00 00 1E */	fctiwz f0, f0
/* 80822FC8  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80822FCC  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80822FD0  4B A4 D6 38 */	b cLib_addCalcAngleS2__FPssss
/* 80822FD4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80822FD8  7C 00 D8 50 */	subf r0, r0, r27
/* 80822FDC  54 00 28 34 */	slwi r0, r0, 5
/* 80822FE0  7C 04 07 34 */	extsh r4, r0
/* 80822FE4  2C 04 15 7C */	cmpwi r4, 0x157c
/* 80822FE8  40 81 00 0C */	ble lbl_80822FF4
/* 80822FEC  38 80 15 7C */	li r4, 0x157c
/* 80822FF0  48 00 00 10 */	b lbl_80823000
lbl_80822FF4:
/* 80822FF4  2C 04 EA 84 */	cmpwi r4, -5500
/* 80822FF8  40 80 00 08 */	bge lbl_80823000
/* 80822FFC  38 80 EA 84 */	li r4, -5500
lbl_80823000:
/* 80823000  38 7F 04 E0 */	addi r3, r31, 0x4e0
/* 80823004  38 A0 00 0A */	li r5, 0xa
/* 80823008  C0 5E 00 5C */	lfs f2, 0x5c(r30)
/* 8082300C  C0 3F 06 9C */	lfs f1, 0x69c(r31)
/* 80823010  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80823014  EC 01 00 32 */	fmuls f0, f1, f0
/* 80823018  EC 02 00 32 */	fmuls f0, f2, f0
/* 8082301C  FC 00 00 1E */	fctiwz f0, f0
/* 80823020  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80823024  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80823028  4B A4 D5 E0 */	b cLib_addCalcAngleS2__FPssss
/* 8082302C  38 7F 04 DC */	addi r3, r31, 0x4dc
/* 80823030  7F 84 E3 78 */	mr r4, r28
/* 80823034  38 A0 00 0A */	li r5, 0xa
/* 80823038  C0 3F 06 9C */	lfs f1, 0x69c(r31)
/* 8082303C  C0 1F 06 94 */	lfs f0, 0x694(r31)
/* 80823040  EC 01 00 32 */	fmuls f0, f1, f0
/* 80823044  FC 00 00 1E */	fctiwz f0, f0
/* 80823048  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 8082304C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 80823050  4B A4 D5 B8 */	b cLib_addCalcAngleS2__FPssss
/* 80823054  38 7F 06 94 */	addi r3, r31, 0x694
/* 80823058  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8082305C  FC 40 08 90 */	fmr f2, f1
/* 80823060  C0 7E 00 60 */	lfs f3, 0x60(r30)
/* 80823064  4B A4 C9 D8 */	b cLib_addCalc2__FPffff
/* 80823068  38 7F 05 2C */	addi r3, r31, 0x52c
/* 8082306C  C0 3F 06 8C */	lfs f1, 0x68c(r31)
/* 80823070  C0 5E 00 08 */	lfs f2, 8(r30)
/* 80823074  C0 7F 06 90 */	lfs f3, 0x690(r31)
/* 80823078  4B A4 C9 C4 */	b cLib_addCalc2__FPffff
/* 8082307C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 80823080  D0 01 00 08 */	stfs f0, 8(r1)
/* 80823084  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80823088  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 8082308C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80823090  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80823094  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80823098  80 63 00 00 */	lwz r3, 0(r3)
/* 8082309C  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 808230A0  4B 7E 93 3C */	b mDoMtx_YrotS__FPA4_fs
/* 808230A4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 808230A8  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 808230AC  80 63 00 00 */	lwz r3, 0(r3)
/* 808230B0  A8 9F 04 DC */	lha r4, 0x4dc(r31)
/* 808230B4  4B 7E 92 E8 */	b mDoMtx_XrotM__FPA4_fs
/* 808230B8  38 61 00 08 */	addi r3, r1, 8
/* 808230BC  38 9F 04 F8 */	addi r4, r31, 0x4f8
/* 808230C0  4B A4 DE 2C */	b MtxPosition__FP4cXyzP4cXyz
/* 808230C4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 808230C8  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 808230CC  EC 01 00 2A */	fadds f0, f1, f0
/* 808230D0  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 808230D4  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 808230D8  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 808230DC  EC 01 00 2A */	fadds f0, f1, f0
/* 808230E0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 808230E4  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 808230E8  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 808230EC  EC 01 00 2A */	fadds f0, f1, f0
/* 808230F0  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 808230F4  A8 7F 06 B0 */	lha r3, 0x6b0(r31)
/* 808230F8  2C 03 00 00 */	cmpwi r3, 0
/* 808230FC  41 82 00 1C */	beq lbl_80823118
/* 80823100  38 03 FF FF */	addi r0, r3, -1
/* 80823104  B0 1F 06 B0 */	sth r0, 0x6b0(r31)
/* 80823108  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 8082310C  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 80823110  EC 01 00 2A */	fadds f0, f1, f0
/* 80823114  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
lbl_80823118:
/* 80823118  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8082311C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80823120  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80823124  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80823128  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8082312C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 80823130  39 61 00 40 */	addi r11, r1, 0x40
/* 80823134  4B B3 F0 EC */	b _restgpr_27
/* 80823138  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8082313C  7C 08 03 A6 */	mtlr r0
/* 80823140  38 21 00 70 */	addi r1, r1, 0x70
/* 80823144  4E 80 00 20 */	blr 

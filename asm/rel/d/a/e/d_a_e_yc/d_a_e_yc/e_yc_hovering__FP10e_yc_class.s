lbl_807F0AA0:
/* 807F0AA0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 807F0AA4  7C 08 02 A6 */	mflr r0
/* 807F0AA8  90 01 00 34 */	stw r0, 0x34(r1)
/* 807F0AAC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 807F0AB0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 807F0AB4  39 61 00 20 */	addi r11, r1, 0x20
/* 807F0AB8  4B B7 17 25 */	bl _savegpr_29
/* 807F0ABC  7C 7D 1B 78 */	mr r29, r3
/* 807F0AC0  3C 80 80 7F */	lis r4, lit_3715@ha /* 0x807F2864@ha */
/* 807F0AC4  3B E4 28 64 */	addi r31, r4, lit_3715@l /* 0x807F2864@l */
/* 807F0AC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 807F0ACC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 807F0AD0  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 807F0AD4  C3 FF 00 04 */	lfs f31, 4(r31)
/* 807F0AD8  A8 03 06 70 */	lha r0, 0x670(r3)
/* 807F0ADC  2C 00 00 01 */	cmpwi r0, 1
/* 807F0AE0  41 82 00 54 */	beq lbl_807F0B34
/* 807F0AE4  40 80 01 00 */	bge lbl_807F0BE4
/* 807F0AE8  2C 00 00 00 */	cmpwi r0, 0
/* 807F0AEC  40 80 00 08 */	bge lbl_807F0AF4
/* 807F0AF0  48 00 00 F4 */	b lbl_807F0BE4
lbl_807F0AF4:
/* 807F0AF4  38 80 00 15 */	li r4, 0x15
/* 807F0AF8  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 807F0AFC  38 A0 00 02 */	li r5, 2
/* 807F0B00  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807F0B04  4B FF F3 ED */	bl anm_init__FP10e_yc_classifUcf
/* 807F0B08  38 00 00 01 */	li r0, 1
/* 807F0B0C  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F0B10  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 807F0B14  4B A7 6E 41 */	bl cM_rndF__Ff
/* 807F0B18  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 807F0B1C  EC 00 08 2A */	fadds f0, f0, f1
/* 807F0B20  FC 00 00 1E */	fctiwz f0, f0
/* 807F0B24  D8 01 00 08 */	stfd f0, 8(r1)
/* 807F0B28  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807F0B2C  B0 1D 06 A2 */	sth r0, 0x6a2(r29)
/* 807F0B30  48 00 00 B4 */	b lbl_807F0BE4
lbl_807F0B34:
/* 807F0B34  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 807F0B38  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 807F0B3C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807F0B40  EC 21 00 2A */	fadds f1, f1, f0
/* 807F0B44  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 807F0B48  40 80 00 14 */	bge lbl_807F0B5C
/* 807F0B4C  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807F0B50  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807F0B54  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 807F0B58  4B A7 EE E5 */	bl cLib_addCalc2__FPffff
lbl_807F0B5C:
/* 807F0B5C  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 807F0B60  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 807F0B64  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 807F0B68  EC 21 00 2A */	fadds f1, f1, f0
/* 807F0B6C  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 807F0B70  40 81 00 14 */	ble lbl_807F0B84
/* 807F0B74  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 807F0B78  C0 5F 00 48 */	lfs f2, 0x48(r31)
/* 807F0B7C  C0 7F 00 64 */	lfs f3, 0x64(r31)
/* 807F0B80  4B A7 EE BD */	bl cLib_addCalc2__FPffff
lbl_807F0B84:
/* 807F0B84  C0 3D 06 84 */	lfs f1, 0x684(r29)
/* 807F0B88  C0 1F 00 5C */	lfs f0, 0x5c(r31)
/* 807F0B8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0B90  40 80 00 0C */	bge lbl_807F0B9C
/* 807F0B94  C3 FF 00 68 */	lfs f31, 0x68(r31)
/* 807F0B98  48 00 00 14 */	b lbl_807F0BAC
lbl_807F0B9C:
/* 807F0B9C  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 807F0BA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0BA4  40 81 00 08 */	ble lbl_807F0BAC
/* 807F0BA8  C3 FF 00 64 */	lfs f31, 0x64(r31)
lbl_807F0BAC:
/* 807F0BAC  A8 1D 06 A2 */	lha r0, 0x6a2(r29)
/* 807F0BB0  2C 00 00 00 */	cmpwi r0, 0
/* 807F0BB4  41 82 00 18 */	beq lbl_807F0BCC
/* 807F0BB8  3C 60 80 7F */	lis r3, S_area_dis@ha /* 0x807F2B08@ha */
/* 807F0BBC  C0 23 2B 08 */	lfs f1, S_area_dis@l(r3)  /* 0x807F2B08@l */
/* 807F0BC0  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 807F0BC4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807F0BC8  40 81 00 1C */	ble lbl_807F0BE4
lbl_807F0BCC:
/* 807F0BCC  38 00 00 0A */	li r0, 0xa
/* 807F0BD0  B0 1D 06 6E */	sth r0, 0x66e(r29)
/* 807F0BD4  38 00 00 00 */	li r0, 0
/* 807F0BD8  B0 1D 06 70 */	sth r0, 0x670(r29)
/* 807F0BDC  38 00 00 01 */	li r0, 1
/* 807F0BE0  90 1D 06 64 */	stw r0, 0x664(r29)
lbl_807F0BE4:
/* 807F0BE4  38 7D 05 2C */	addi r3, r29, 0x52c
/* 807F0BE8  FC 20 F8 90 */	fmr f1, f31
/* 807F0BEC  C0 5F 00 00 */	lfs f2, 0(r31)
/* 807F0BF0  C0 7F 00 50 */	lfs f3, 0x50(r31)
/* 807F0BF4  4B A7 EE 49 */	bl cLib_addCalc2__FPffff
/* 807F0BF8  38 7D 04 DE */	addi r3, r29, 0x4de
/* 807F0BFC  A8 9D 06 80 */	lha r4, 0x680(r29)
/* 807F0C00  38 A0 00 08 */	li r5, 8
/* 807F0C04  38 C0 02 00 */	li r6, 0x200
/* 807F0C08  4B A7 FA 01 */	bl cLib_addCalcAngleS2__FPssss
/* 807F0C0C  38 7D 04 E0 */	addi r3, r29, 0x4e0
/* 807F0C10  38 80 00 00 */	li r4, 0
/* 807F0C14  38 A0 00 04 */	li r5, 4
/* 807F0C18  38 C0 08 00 */	li r6, 0x800
/* 807F0C1C  4B A7 F9 ED */	bl cLib_addCalcAngleS2__FPssss
/* 807F0C20  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 807F0C24  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 807F0C28  39 61 00 20 */	addi r11, r1, 0x20
/* 807F0C2C  4B B7 15 FD */	bl _restgpr_29
/* 807F0C30  80 01 00 34 */	lwz r0, 0x34(r1)
/* 807F0C34  7C 08 03 A6 */	mtlr r0
/* 807F0C38  38 21 00 30 */	addi r1, r1, 0x30
/* 807F0C3C  4E 80 00 20 */	blr 

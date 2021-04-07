lbl_80669A1C:
/* 80669A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80669A20  7C 08 02 A6 */	mflr r0
/* 80669A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80669A28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80669A2C  93 C1 00 08 */	stw r30, 8(r1)
/* 80669A30  7C 7E 1B 78 */	mr r30, r3
/* 80669A34  3C 80 80 67 */	lis r4, lit_3662@ha /* 0x8066EDE8@ha */
/* 80669A38  3B E4 ED E8 */	addi r31, r4, lit_3662@l /* 0x8066EDE8@l */
/* 80669A3C  38 00 00 01 */	li r0, 1
/* 80669A40  98 03 06 16 */	stb r0, 0x616(r3)
/* 80669A44  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80669A48  D0 03 06 48 */	stfs f0, 0x648(r3)
/* 80669A4C  A8 03 05 F6 */	lha r0, 0x5f6(r3)
/* 80669A50  2C 00 00 01 */	cmpwi r0, 1
/* 80669A54  41 82 00 3C */	beq lbl_80669A90
/* 80669A58  40 80 00 58 */	bge lbl_80669AB0
/* 80669A5C  2C 00 00 00 */	cmpwi r0, 0
/* 80669A60  40 80 00 08 */	bge lbl_80669A68
/* 80669A64  48 00 00 4C */	b lbl_80669AB0
lbl_80669A68:
/* 80669A68  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80669A6C  D0 1E 05 E8 */	stfs f0, 0x5e8(r30)
/* 80669A70  38 80 00 16 */	li r4, 0x16
/* 80669A74  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80669A78  38 A0 00 02 */	li r5, 2
/* 80669A7C  C0 5E 05 E8 */	lfs f2, 0x5e8(r30)
/* 80669A80  4B FF E3 29 */	bl anm_init__FP8do_classifUcf
/* 80669A84  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 80669A88  38 03 00 01 */	addi r0, r3, 1
/* 80669A8C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_80669A90:
/* 80669A90  38 7E 05 E8 */	addi r3, r30, 0x5e8
/* 80669A94  C0 3F 00 C4 */	lfs f1, 0xc4(r31)
/* 80669A98  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80669A9C  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 80669AA0  4B C0 5F 9D */	bl cLib_addCalc2__FPffff
/* 80669AA4  C0 1E 05 E8 */	lfs f0, 0x5e8(r30)
/* 80669AA8  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 80669AAC  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80669AB0:
/* 80669AB0  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80669AB4  C0 3E 05 E8 */	lfs f1, 0x5e8(r30)
/* 80669AB8  3C 80 80 67 */	lis r4, l_HIO@ha /* 0x8066F2C4@ha */
/* 80669ABC  38 84 F2 C4 */	addi r4, r4, l_HIO@l /* 0x8066F2C4@l */
/* 80669AC0  C0 04 00 0C */	lfs f0, 0xc(r4)
/* 80669AC4  EC 21 00 32 */	fmuls f1, f1, f0
/* 80669AC8  C0 5F 00 00 */	lfs f2, 0(r31)
/* 80669ACC  C0 7F 00 44 */	lfs f3, 0x44(r31)
/* 80669AD0  4B C0 5F 6D */	bl cLib_addCalc2__FPffff
/* 80669AD4  38 7E 04 DE */	addi r3, r30, 0x4de
/* 80669AD8  A8 9E 05 CC */	lha r4, 0x5cc(r30)
/* 80669ADC  38 A0 00 08 */	li r5, 8
/* 80669AE0  38 C0 04 00 */	li r6, 0x400
/* 80669AE4  4B C0 6B 25 */	bl cLib_addCalcAngleS2__FPssss
/* 80669AE8  C0 5E 05 C8 */	lfs f2, 0x5c8(r30)
/* 80669AEC  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 80669AF0  C0 3E 06 7C */	lfs f1, 0x67c(r30)
/* 80669AF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80669AF8  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80669AFC  40 80 00 38 */	bge lbl_80669B34
/* 80669B00  3C 60 80 67 */	lis r3, l_HIO@ha /* 0x8066F2C4@ha */
/* 80669B04  38 63 F2 C4 */	addi r3, r3, l_HIO@l /* 0x8066F2C4@l */
/* 80669B08  88 03 00 1C */	lbz r0, 0x1c(r3)
/* 80669B0C  28 00 00 00 */	cmplwi r0, 0
/* 80669B10  41 82 00 10 */	beq lbl_80669B20
/* 80669B14  38 00 00 07 */	li r0, 7
/* 80669B18  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 80669B1C  48 00 00 0C */	b lbl_80669B28
lbl_80669B20:
/* 80669B20  38 00 00 06 */	li r0, 6
/* 80669B24  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
lbl_80669B28:
/* 80669B28  38 00 00 00 */	li r0, 0
/* 80669B2C  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 80669B30  48 00 00 24 */	b lbl_80669B54
lbl_80669B34:
/* 80669B34  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80669B38  EC 00 00 72 */	fmuls f0, f0, f1
/* 80669B3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80669B40  40 81 00 14 */	ble lbl_80669B54
/* 80669B44  38 00 00 03 */	li r0, 3
/* 80669B48  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 80669B4C  38 00 00 00 */	li r0, 0
/* 80669B50  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_80669B54:
/* 80669B54  7F C3 F3 78 */	mr r3, r30
/* 80669B58  4B FF F0 49 */	bl area_check__FP8do_class
/* 80669B5C  7F C3 F3 78 */	mr r3, r30
/* 80669B60  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80669B64  4B FF EF B5 */	bl move_dansa_check__FP8do_classf
/* 80669B68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80669B6C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80669B70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80669B74  7C 08 03 A6 */	mtlr r0
/* 80669B78  38 21 00 10 */	addi r1, r1, 0x10
/* 80669B7C  4E 80 00 20 */	blr 

lbl_80590F30:
/* 80590F30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80590F34  7C 08 02 A6 */	mflr r0
/* 80590F38  90 01 00 24 */	stw r0, 0x24(r1)
/* 80590F3C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80590F40  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80590F44  7C 7E 1B 78 */	mr r30, r3
/* 80590F48  3C 60 80 59 */	lis r3, l_magne_scale@ha
/* 80590F4C  3B E3 28 48 */	addi r31, r3, l_magne_scale@l
/* 80590F50  38 7E 0A 17 */	addi r3, r30, 0xa17
/* 80590F54  48 00 18 C1 */	bl func_80592814
/* 80590F58  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80590F5C  40 82 00 90 */	bne lbl_80590FEC
/* 80590F60  38 7E 0A 0C */	addi r3, r30, 0xa0c
/* 80590F64  38 9F 00 2C */	addi r4, r31, 0x2c
/* 80590F68  A8 84 00 02 */	lha r4, 2(r4)
/* 80590F6C  38 A0 00 14 */	li r5, 0x14
/* 80590F70  38 C0 00 32 */	li r6, 0x32
/* 80590F74  38 E0 00 0A */	li r7, 0xa
/* 80590F78  4B CD F5 C8 */	b cLib_addCalcAngleS__FPsssss
/* 80590F7C  A8 7E 0A 00 */	lha r3, 0xa00(r30)
/* 80590F80  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 80590F84  7C 03 02 14 */	add r0, r3, r0
/* 80590F88  B0 1E 0A 00 */	sth r0, 0xa00(r30)
/* 80590F8C  C0 7E 0A 04 */	lfs f3, 0xa04(r30)
/* 80590F90  C0 5F 00 F0 */	lfs f2, 0xf0(r31)
/* 80590F94  A8 1E 0A 0C */	lha r0, 0xa0c(r30)
/* 80590F98  C8 3F 00 78 */	lfd f1, 0x78(r31)
/* 80590F9C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80590FA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80590FA4  3C 00 43 30 */	lis r0, 0x4330
/* 80590FA8  90 01 00 08 */	stw r0, 8(r1)
/* 80590FAC  C8 01 00 08 */	lfd f0, 8(r1)
/* 80590FB0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80590FB4  EC 22 00 32 */	fmuls f1, f2, f0
/* 80590FB8  C0 1F 00 F4 */	lfs f0, 0xf4(r31)
/* 80590FBC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80590FC0  EC 03 00 2A */	fadds f0, f3, f0
/* 80590FC4  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 80590FC8  C0 3E 0A 04 */	lfs f1, 0xa04(r30)
/* 80590FCC  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 80590FD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80590FD4  40 81 00 10 */	ble lbl_80590FE4
/* 80590FD8  D0 1E 0A 04 */	stfs f0, 0xa04(r30)
/* 80590FDC  7F C3 F3 78 */	mr r3, r30
/* 80590FE0  48 00 01 09 */	bl init_typeB_modeRotate__11daObjMarm_cFv
lbl_80590FE4:
/* 80590FE4  7F C3 F3 78 */	mr r3, r30
/* 80590FE8  48 00 0F 69 */	bl seStartLevel_UP__11daObjMarm_cFv
lbl_80590FEC:
/* 80590FEC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80590FF0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80590FF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80590FF8  7C 08 03 A6 */	mtlr r0
/* 80590FFC  38 21 00 20 */	addi r1, r1, 0x20
/* 80591000  4E 80 00 20 */	blr 

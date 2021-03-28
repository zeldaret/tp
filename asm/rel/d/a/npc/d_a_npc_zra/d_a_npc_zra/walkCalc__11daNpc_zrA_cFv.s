lbl_80B7FD10:
/* 80B7FD10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B7FD14  7C 08 02 A6 */	mflr r0
/* 80B7FD18  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B7FD1C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80B7FD20  7C 7F 1B 78 */	mr r31, r3
/* 80B7FD24  38 00 00 00 */	li r0, 0
/* 80B7FD28  98 03 15 50 */	stb r0, 0x1550(r3)
/* 80B7FD2C  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80B7FD30  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B7FD34  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80B7FD38  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B7FD3C  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80B7FD40  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B7FD44  38 7F 0C 18 */	addi r3, r31, 0xc18
/* 80B7FD48  38 81 00 14 */	addi r4, r1, 0x14
/* 80B7FD4C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80B7FD50  4B FF 8D 11 */	bl getDstPosDstXZ__16daNpc_zrA_Path_cF4cXyzR4cXyz
/* 80B7FD54  2C 03 00 00 */	cmpwi r3, 0
/* 80B7FD58  41 82 00 34 */	beq lbl_80B7FD8C
/* 80B7FD5C  38 7F 0C 18 */	addi r3, r31, 0xc18
/* 80B7FD60  4B 5D 0E 5C */	b reverse__13daNpcF_Path_cFv
/* 80B7FD64  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80B7FD68  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B7FD6C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80B7FD70  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B7FD74  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80B7FD78  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B7FD7C  38 7F 0C 18 */	addi r3, r31, 0xc18
/* 80B7FD80  38 81 00 08 */	addi r4, r1, 8
/* 80B7FD84  38 A1 00 20 */	addi r5, r1, 0x20
/* 80B7FD88  4B FF 8C D9 */	bl getDstPosDstXZ__16daNpc_zrA_Path_cF4cXyzR4cXyz
lbl_80B7FD8C:
/* 80B7FD8C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80B7FD90  38 81 00 20 */	addi r4, r1, 0x20
/* 80B7FD94  4B 6F 0E 70 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B7FD98  7C 64 1B 78 */	mr r4, r3
/* 80B7FD9C  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B7FDA0  38 C3 C4 58 */	addi r6, r3, m__17daNpc_zrA_Param_c@l
/* 80B7FDA4  C0 26 00 94 */	lfs f1, 0x94(r6)
/* 80B7FDA8  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 80B7FDAC  C0 06 00 9C */	lfs f0, 0x9c(r6)
/* 80B7FDB0  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B7FDB4  80 7F 05 68 */	lwz r3, 0x568(r31)
/* 80B7FDB8  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80B7FDBC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 80B7FDC0  A8 A6 00 9A */	lha r5, 0x9a(r6)
/* 80B7FDC4  A8 C6 00 98 */	lha r6, 0x98(r6)
/* 80B7FDC8  4B 6F 08 40 */	b cLib_addCalcAngleS2__FPssss
/* 80B7FDCC  A8 1F 04 DC */	lha r0, 0x4dc(r31)
/* 80B7FDD0  B0 1F 08 F0 */	sth r0, 0x8f0(r31)
/* 80B7FDD4  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80B7FDD8  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 80B7FDDC  A8 1F 04 E0 */	lha r0, 0x4e0(r31)
/* 80B7FDE0  B0 1F 08 F4 */	sth r0, 0x8f4(r31)
/* 80B7FDE4  A8 1F 08 F0 */	lha r0, 0x8f0(r31)
/* 80B7FDE8  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80B7FDEC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B7FDF0  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80B7FDF4  A8 1F 08 F4 */	lha r0, 0x8f4(r31)
/* 80B7FDF8  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80B7FDFC  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 80B7FE00  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 80B7FE04  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80B7FE08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B7FE0C  7C 08 03 A6 */	mtlr r0
/* 80B7FE10  38 21 00 40 */	addi r1, r1, 0x40
/* 80B7FE14  4E 80 00 20 */	blr 

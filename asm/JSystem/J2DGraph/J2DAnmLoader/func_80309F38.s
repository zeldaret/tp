lbl_80309F38:
/* 80309F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309F3C  7C 08 02 A6 */	mflr r0
/* 80309F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309F44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309F48  93 C1 00 08 */	stw r30, 8(r1)
/* 80309F4C  7C 9E 23 78 */	mr r30, r4
/* 80309F50  7C BF 2B 78 */	mr r31, r5
/* 80309F54  A8 05 00 0A */	lha r0, 0xa(r5)
/* 80309F58  B0 04 00 06 */	sth r0, 6(r4)
/* 80309F5C  88 05 00 08 */	lbz r0, 8(r5)
/* 80309F60  98 04 00 04 */	stb r0, 4(r4)
/* 80309F64  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 80309F68  D0 04 00 08 */	stfs f0, 8(r4)
/* 80309F6C  A0 05 00 0C */	lhz r0, 0xc(r5)
/* 80309F70  B0 04 00 1A */	sth r0, 0x1a(r4)
/* 80309F74  A0 05 00 0E */	lhz r0, 0xe(r5)
/* 80309F78  B0 04 00 18 */	sth r0, 0x18(r4)
/* 80309F7C  7F E3 FB 78 */	mr r3, r31
/* 80309F80  80 85 00 10 */	lwz r4, 0x10(r5)
/* 80309F84  48 00 05 1D */	bl func_8030A4A0
/* 80309F88  90 7E 00 14 */	stw r3, 0x14(r30)
/* 80309F8C  7F E3 FB 78 */	mr r3, r31
/* 80309F90  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80309F94  4B FE A3 2D */	bl func_802F42C0
/* 80309F98  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80309F9C  7F E3 FB 78 */	mr r3, r31
/* 80309FA0  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80309FA4  4B FE A3 1D */	bl func_802F42C0
/* 80309FA8  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 80309FAC  7F E3 FB 78 */	mr r3, r31
/* 80309FB0  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80309FB4  48 00 05 7D */	bl func_8030A530
/* 80309FB8  7C 64 1B 78 */	mr r4, r3
/* 80309FBC  38 7E 00 20 */	addi r3, r30, 0x20
/* 80309FC0  4B FD 4A 5D */	bl setResource__10JUTNameTabFPC7ResNTAB
/* 80309FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80309FC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80309FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309FD0  7C 08 03 A6 */	mtlr r0
/* 80309FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80309FD8  4E 80 00 20 */	blr 

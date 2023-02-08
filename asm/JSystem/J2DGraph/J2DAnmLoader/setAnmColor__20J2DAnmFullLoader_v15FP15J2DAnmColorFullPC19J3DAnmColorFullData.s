lbl_80309E44:
/* 80309E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309E48  7C 08 02 A6 */	mflr r0
/* 80309E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309E50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309E54  93 C1 00 08 */	stw r30, 8(r1)
/* 80309E58  7C 9E 23 78 */	mr r30, r4
/* 80309E5C  7C BF 2B 78 */	mr r31, r5
/* 80309E60  A8 05 00 0C */	lha r0, 0xc(r5)
/* 80309E64  B0 04 00 06 */	sth r0, 6(r4)
/* 80309E68  88 05 00 08 */	lbz r0, 8(r5)
/* 80309E6C  98 04 00 04 */	stb r0, 4(r4)
/* 80309E70  C0 02 C8 F8 */	lfs f0, lit_1581(r2)
/* 80309E74  D0 04 00 08 */	stfs f0, 8(r4)
/* 80309E78  A0 05 00 0E */	lhz r0, 0xe(r5)
/* 80309E7C  B0 04 00 18 */	sth r0, 0x18(r4)
/* 80309E80  7F E3 FB 78 */	mr r3, r31
/* 80309E84  80 85 00 18 */	lwz r4, 0x18(r5)
/* 80309E88  48 00 06 31 */	bl func_8030A4B8
/* 80309E8C  90 7E 00 40 */	stw r3, 0x40(r30)
/* 80309E90  7F E3 FB 78 */	mr r3, r31
/* 80309E94  80 9F 00 24 */	lwz r4, 0x24(r31)
/* 80309E98  4B FE A3 C9 */	bl func_802F4260
/* 80309E9C  90 7E 00 30 */	stw r3, 0x30(r30)
/* 80309EA0  7F E3 FB 78 */	mr r3, r31
/* 80309EA4  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 80309EA8  4B FE A3 B9 */	bl func_802F4260
/* 80309EAC  90 7E 00 34 */	stw r3, 0x34(r30)
/* 80309EB0  7F E3 FB 78 */	mr r3, r31
/* 80309EB4  80 9F 00 2C */	lwz r4, 0x2c(r31)
/* 80309EB8  4B FE A3 A9 */	bl func_802F4260
/* 80309EBC  90 7E 00 38 */	stw r3, 0x38(r30)
/* 80309EC0  7F E3 FB 78 */	mr r3, r31
/* 80309EC4  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80309EC8  4B FE A3 99 */	bl func_802F4260
/* 80309ECC  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80309ED0  7F E3 FB 78 */	mr r3, r31
/* 80309ED4  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80309ED8  4B FE A3 E9 */	bl func_802F42C0
/* 80309EDC  90 7E 00 1C */	stw r3, 0x1c(r30)
/* 80309EE0  7F E3 FB 78 */	mr r3, r31
/* 80309EE4  80 9F 00 20 */	lwz r4, 0x20(r31)
/* 80309EE8  48 00 06 49 */	bl func_8030A530
/* 80309EEC  7C 64 1B 78 */	mr r4, r3
/* 80309EF0  38 7E 00 20 */	addi r3, r30, 0x20
/* 80309EF4  4B FD 4B 29 */	bl setResource__10JUTNameTabFPC7ResNTAB
/* 80309EF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80309EFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80309F00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309F04  7C 08 03 A6 */	mtlr r0
/* 80309F08  38 21 00 10 */	addi r1, r1, 0x10
/* 80309F0C  4E 80 00 20 */	blr 

lbl_803389D8:
/* 803389D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803389DC  7C 08 02 A6 */	mflr r0
/* 803389E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803389E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803389E8  93 C1 00 08 */	stw r30, 8(r1)
/* 803389EC  7C 9E 23 78 */	mr r30, r4
/* 803389F0  7C BF 2B 78 */	mr r31, r5
/* 803389F4  A8 05 00 0A */	lha r0, 0xa(r5)
/* 803389F8  B0 04 00 06 */	sth r0, 6(r4)
/* 803389FC  88 05 00 08 */	lbz r0, 8(r5)
/* 80338A00  98 04 00 04 */	stb r0, 4(r4)
/* 80338A04  C0 02 CA C0 */	lfs f0, lit_889(r2)
/* 80338A08  D0 04 00 08 */	stfs f0, 8(r4)
/* 80338A0C  A0 05 00 0C */	lhz r0, 0xc(r5)
/* 80338A10  B0 04 00 16 */	sth r0, 0x16(r4)
/* 80338A14  A0 05 00 0E */	lhz r0, 0xe(r5)
/* 80338A18  B0 04 00 14 */	sth r0, 0x14(r4)
/* 80338A1C  7F E3 FB 78 */	mr r3, r31
/* 80338A20  80 85 00 10 */	lwz r4, 0x10(r5)
/* 80338A24  4B FD 1A 7D */	bl func_8030A4A0
/* 80338A28  90 7E 00 10 */	stw r3, 0x10(r30)
/* 80338A2C  7F E3 FB 78 */	mr r3, r31
/* 80338A30  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 80338A34  4B FB B8 8D */	bl func_802F42C0
/* 80338A38  90 7E 00 0C */	stw r3, 0xc(r30)
/* 80338A3C  7F E3 FB 78 */	mr r3, r31
/* 80338A40  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 80338A44  4B FB B8 7D */	bl func_802F42C0
/* 80338A48  90 7E 00 18 */	stw r3, 0x18(r30)
/* 80338A4C  7F E3 FB 78 */	mr r3, r31
/* 80338A50  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 80338A54  4B FD 1A DD */	bl func_8030A530
/* 80338A58  7C 64 1B 78 */	mr r4, r3
/* 80338A5C  38 7E 00 1C */	addi r3, r30, 0x1c
/* 80338A60  4B FA 5F BD */	bl setResource__10JUTNameTabFPC7ResNTAB
/* 80338A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80338A68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80338A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80338A70  7C 08 03 A6 */	mtlr r0
/* 80338A74  38 21 00 10 */	addi r1, r1, 0x10
/* 80338A78  4E 80 00 20 */	blr 

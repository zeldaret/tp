lbl_80462A1C:
/* 80462A1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80462A20  7C 08 02 A6 */	mflr r0
/* 80462A24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80462A28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80462A2C  7C 7F 1B 78 */	mr r31, r3
/* 80462A30  A0 03 06 8E */	lhz r0, 0x68e(r3)
/* 80462A34  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 80462A38  B0 03 06 8E */	sth r0, 0x68e(r3)
/* 80462A3C  48 00 2C B5 */	bl closeEndCom__10daDoor20_cFv
/* 80462A40  7F E3 FB 78 */	mr r3, r31
/* 80462A44  48 00 20 A1 */	bl deleteKey__10daDoor20_cFv
/* 80462A48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80462A4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80462A50  7C 08 03 A6 */	mtlr r0
/* 80462A54  38 21 00 10 */	addi r1, r1, 0x10
/* 80462A58  4E 80 00 20 */	blr 

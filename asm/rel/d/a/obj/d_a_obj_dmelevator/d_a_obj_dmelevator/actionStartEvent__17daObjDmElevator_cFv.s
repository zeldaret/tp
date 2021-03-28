lbl_80BDF068:
/* 80BDF068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDF06C  7C 08 02 A6 */	mflr r0
/* 80BDF070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDF074  80 03 04 9C */	lwz r0, 0x49c(r3)
/* 80BDF078  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80BDF07C  41 82 00 0C */	beq lbl_80BDF088
/* 80BDF080  48 00 00 ED */	bl demoProc__17daObjDmElevator_cFv
/* 80BDF084  48 00 00 0C */	b lbl_80BDF090
lbl_80BDF088:
/* 80BDF088  38 00 00 00 */	li r0, 0
/* 80BDF08C  98 03 05 E2 */	stb r0, 0x5e2(r3)
lbl_80BDF090:
/* 80BDF090  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDF094  7C 08 03 A6 */	mtlr r0
/* 80BDF098  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDF09C  4E 80 00 20 */	blr 

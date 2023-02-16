lbl_802B4128:
/* 802B4128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802B412C  7C 08 02 A6 */	mflr r0
/* 802B4130  90 01 00 14 */	stw r0, 0x14(r1)
/* 802B4134  80 6D 85 C8 */	lwz r3, __OSReport_disable-0x50(r13)
/* 802B4138  28 03 00 00 */	cmplwi r3, 0
/* 802B413C  41 82 00 18 */	beq lbl_802B4154
/* 802B4140  38 80 00 00 */	li r4, 0
/* 802B4144  38 A0 02 BC */	li r5, 0x2bc
/* 802B4148  38 C0 04 4C */	li r6, 0x44c
/* 802B414C  38 E0 05 DC */	li r7, 0x5dc
/* 802B4150  48 00 B8 31 */	bl setForceBattleArea__13Z2SoundObjMgrFbUsUsUs
lbl_802B4154:
/* 802B4154  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802B4158  7C 08 03 A6 */	mtlr r0
/* 802B415C  38 21 00 10 */	addi r1, r1, 0x10
/* 802B4160  4E 80 00 20 */	blr 

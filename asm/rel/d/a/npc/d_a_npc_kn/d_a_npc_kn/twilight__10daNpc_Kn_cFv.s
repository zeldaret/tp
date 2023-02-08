lbl_80A3A25C:
/* 80A3A25C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A3A260  7C 08 02 A6 */	mflr r0
/* 80A3A264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A3A268  88 03 0A BD */	lbz r0, 0xabd(r3)
/* 80A3A26C  28 00 00 00 */	cmplwi r0, 0
/* 80A3A270  41 82 00 28 */	beq lbl_80A3A298
/* 80A3A274  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80A3A278  64 00 00 40 */	oris r0, r0, 0x40
/* 80A3A27C  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80A3A280  38 00 00 00 */	li r0, 0
/* 80A3A284  98 03 0E 32 */	stb r0, 0xe32(r3)
/* 80A3A288  80 03 05 5C */	lwz r0, 0x55c(r3)
/* 80A3A28C  64 00 00 80 */	oris r0, r0, 0x80
/* 80A3A290  90 03 05 5C */	stw r0, 0x55c(r3)
/* 80A3A294  48 00 13 59 */	bl setHitodamaPrtcl__10daNpc_Kn_cFv
lbl_80A3A298:
/* 80A3A298  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A3A29C  7C 08 03 A6 */	mtlr r0
/* 80A3A2A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A3A2A4  4E 80 00 20 */	blr 

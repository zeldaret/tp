lbl_80D61384:
/* 80D61384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D61388  7C 08 02 A6 */	mflr r0
/* 80D6138C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D61390  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D61394  7C 7F 1B 78 */	mr r31, r3
/* 80D61398  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D6139C  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D613A0  40 82 00 1C */	bne lbl_80D613BC
/* 80D613A4  28 1F 00 00 */	cmplwi r31, 0
/* 80D613A8  41 82 00 08 */	beq lbl_80D613B0
/* 80D613AC  4B FF FF 2D */	bl __ct__13daTagSmkEmt_cFv
lbl_80D613B0:
/* 80D613B0  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80D613B4  60 00 00 08 */	ori r0, r0, 8
/* 80D613B8  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80D613BC:
/* 80D613BC  7F E3 FB 78 */	mr r3, r31
/* 80D613C0  48 00 00 51 */	bl createSmkEmt__13daTagSmkEmt_cFv
/* 80D613C4  38 60 00 04 */	li r3, 4
/* 80D613C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D613CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D613D0  7C 08 03 A6 */	mtlr r0
/* 80D613D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80D613D8  4E 80 00 20 */	blr 

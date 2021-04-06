lbl_80C76094:
/* 80C76094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C76098  7C 08 02 A6 */	mflr r0
/* 80C7609C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C760A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C760A4  93 C1 00 08 */	stw r30, 8(r1)
/* 80C760A8  7C 7E 1B 78 */	mr r30, r3
/* 80C760AC  38 7E 05 B0 */	addi r3, r30, 0x5b0
/* 80C760B0  4B 39 73 79 */	bl play__14mDoExt_baseAnmFv
/* 80C760B4  7C 7F 1B 78 */	mr r31, r3
/* 80C760B8  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80C760BC  4B 39 73 6D */	bl play__14mDoExt_baseAnmFv
/* 80C760C0  2C 1F 00 01 */	cmpwi r31, 1
/* 80C760C4  41 82 00 0C */	beq lbl_80C760D0
/* 80C760C8  2C 03 00 01 */	cmpwi r3, 1
/* 80C760CC  40 82 00 0C */	bne lbl_80C760D8
lbl_80C760D0:
/* 80C760D0  7F C3 F3 78 */	mr r3, r30
/* 80C760D4  48 00 00 1D */	bl init_modeOpen__13daLv6SzGate_cFv
lbl_80C760D8:
/* 80C760D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C760DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C760E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C760E4  7C 08 03 A6 */	mtlr r0
/* 80C760E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C760EC  4E 80 00 20 */	blr 

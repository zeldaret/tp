lbl_800D2368:
/* 800D2368  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D236C  7C 08 02 A6 */	mflr r0
/* 800D2370  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D2374  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D2378  93 C1 00 08 */	stw r30, 8(r1)
/* 800D237C  7C 7E 1B 78 */	mr r30, r3
/* 800D2380  3B E0 00 00 */	li r31, 0
/* 800D2384  4B FE 03 35 */	bl swordSwingTrigger__9daAlink_cFv
/* 800D2388  2C 03 00 00 */	cmpwi r3, 0
/* 800D238C  41 82 00 18 */	beq lbl_800D23A4
/* 800D2390  7F C3 F3 78 */	mr r3, r30
/* 800D2394  4B FF F0 51 */	bl checkCutTurnInput__9daAlink_cCFv
/* 800D2398  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800D239C  41 82 00 08 */	beq lbl_800D23A4
/* 800D23A0  3B E0 00 01 */	li r31, 1
lbl_800D23A4:
/* 800D23A4  7F E3 FB 78 */	mr r3, r31
/* 800D23A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D23AC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800D23B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D23B4  7C 08 03 A6 */	mtlr r0
/* 800D23B8  38 21 00 10 */	addi r1, r1, 0x10
/* 800D23BC  4E 80 00 20 */	blr 

lbl_8046F6EC:
/* 8046F6EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046F6F0  7C 08 02 A6 */	mflr r0
/* 8046F6F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046F6F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046F6FC  7C 9F 23 78 */	mr r31, r4
/* 8046F700  4B FF FF A5 */	bl data__12daObjCarry_cFv
/* 8046F704  88 03 00 35 */	lbz r0, 0x35(r3)
/* 8046F708  7C 00 F8 38 */	and r0, r0, r31
/* 8046F70C  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 8046F710  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046F714  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046F718  7C 08 03 A6 */	mtlr r0
/* 8046F71C  38 21 00 10 */	addi r1, r1, 0x10
/* 8046F720  4E 80 00 20 */	blr 

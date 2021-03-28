lbl_80AD3B74:
/* 80AD3B74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD3B78  7C 08 02 A6 */	mflr r0
/* 80AD3B7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD3B80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AD3B84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AD3B88  41 82 00 10 */	beq lbl_80AD3B98
/* 80AD3B8C  7C 80 07 35 */	extsh. r0, r4
/* 80AD3B90  40 81 00 08 */	ble lbl_80AD3B98
/* 80AD3B94  4B 7F B1 A8 */	b __dl__FPv
lbl_80AD3B98:
/* 80AD3B98  7F E3 FB 78 */	mr r3, r31
/* 80AD3B9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AD3BA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD3BA4  7C 08 03 A6 */	mtlr r0
/* 80AD3BA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD3BAC  4E 80 00 20 */	blr 

lbl_80167BBC:
/* 80167BBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80167BC0  7C 08 02 A6 */	mflr r0
/* 80167BC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80167BC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80167BCC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80167BD0  41 82 00 10 */	beq lbl_80167BE0
/* 80167BD4  7C 80 07 35 */	extsh. r0, r4
/* 80167BD8  40 81 00 08 */	ble lbl_80167BE0
/* 80167BDC  48 16 71 61 */	bl __dl__FPv
lbl_80167BE0:
/* 80167BE0  7F E3 FB 78 */	mr r3, r31
/* 80167BE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80167BE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80167BEC  7C 08 03 A6 */	mtlr r0
/* 80167BF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80167BF4  4E 80 00 20 */	blr 

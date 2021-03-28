lbl_80B5F6DC:
/* 80B5F6DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5F6E0  7C 08 02 A6 */	mflr r0
/* 80B5F6E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5F6E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5F6EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5F6F0  41 82 00 10 */	beq lbl_80B5F700
/* 80B5F6F4  7C 80 07 35 */	extsh. r0, r4
/* 80B5F6F8  40 81 00 08 */	ble lbl_80B5F700
/* 80B5F6FC  4B 76 F6 40 */	b __dl__FPv
lbl_80B5F700:
/* 80B5F700  7F E3 FB 78 */	mr r3, r31
/* 80B5F704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5F708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5F70C  7C 08 03 A6 */	mtlr r0
/* 80B5F710  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5F714  4E 80 00 20 */	blr 

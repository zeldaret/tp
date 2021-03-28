lbl_80876BA8:
/* 80876BA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80876BAC  7C 08 02 A6 */	mflr r0
/* 80876BB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80876BB4  38 E0 00 00 */	li r7, 0
/* 80876BB8  39 00 00 7D */	li r8, 0x7d
/* 80876BBC  4B AE 4F C0 */	b GXSetTexCoordGen2
/* 80876BC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80876BC4  7C 08 03 A6 */	mtlr r0
/* 80876BC8  38 21 00 10 */	addi r1, r1, 0x10
/* 80876BCC  4E 80 00 20 */	blr 

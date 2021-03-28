lbl_809AABF8:
/* 809AABF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AABFC  7C 08 02 A6 */	mflr r0
/* 809AAC00  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AAC04  4B 8B 84 8C */	b ModuleUnresolved
/* 809AAC08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AAC0C  7C 08 03 A6 */	mtlr r0
/* 809AAC10  38 21 00 10 */	addi r1, r1, 0x10
/* 809AAC14  4E 80 00 20 */	blr 

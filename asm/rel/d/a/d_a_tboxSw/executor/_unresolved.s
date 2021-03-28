lbl_80D66838:
/* 80D66838  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6683C  7C 08 02 A6 */	mflr r0
/* 80D66840  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D66844  4B 4F C8 4C */	b ModuleUnresolved
/* 80D66848  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6684C  7C 08 03 A6 */	mtlr r0
/* 80D66850  38 21 00 10 */	addi r1, r1, 0x10
/* 80D66854  4E 80 00 20 */	blr 

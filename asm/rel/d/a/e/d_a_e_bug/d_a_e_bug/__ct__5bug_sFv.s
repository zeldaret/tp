lbl_80697BB8:
/* 80697BB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80697BBC  7C 08 02 A6 */	mflr r0
/* 80697BC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80697BC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80697BC8  7C 7F 1B 78 */	mr r31, r3
/* 80697BCC  38 7F 00 58 */	addi r3, r31, 0x58
/* 80697BD0  4B C2 6C 74 */	b __ct__16Z2SoundObjSimpleFv
/* 80697BD4  7F E3 FB 78 */	mr r3, r31
/* 80697BD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80697BDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80697BE0  7C 08 03 A6 */	mtlr r0
/* 80697BE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80697BE8  4E 80 00 20 */	blr 

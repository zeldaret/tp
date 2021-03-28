lbl_80270FC8:
/* 80270FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80270FCC  7C 08 02 A6 */	mflr r0
/* 80270FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80270FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80270FD8  7C 7F 1B 78 */	mr r31, r3
/* 80270FDC  48 00 00 31 */	bl Val__7cSAngleFf
/* 80270FE0  7F E3 FB 78 */	mr r3, r31
/* 80270FE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80270FE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80270FEC  7C 08 03 A6 */	mtlr r0
/* 80270FF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80270FF4  4E 80 00 20 */	blr 

lbl_80270F68:
/* 80270F68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80270F6C  7C 08 02 A6 */	mflr r0
/* 80270F70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80270F74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80270F78  7C 7F 1B 78 */	mr r31, r3
/* 80270F7C  48 00 00 7D */	bl Val__7cSAngleFRC7cSAngle
/* 80270F80  7F E3 FB 78 */	mr r3, r31
/* 80270F84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80270F88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80270F8C  7C 08 03 A6 */	mtlr r0
/* 80270F90  38 21 00 10 */	addi r1, r1, 0x10
/* 80270F94  4E 80 00 20 */	blr 

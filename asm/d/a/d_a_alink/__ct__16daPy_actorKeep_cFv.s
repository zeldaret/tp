lbl_801410EC:
/* 801410EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801410F0  7C 08 02 A6 */	mflr r0
/* 801410F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801410F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 801410FC  7C 7F 1B 78 */	mr r31, r3
/* 80141100  48 01 DB FD */	bl clearData__16daPy_actorKeep_cFv
/* 80141104  7F E3 FB 78 */	mr r3, r31
/* 80141108  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8014110C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80141110  7C 08 03 A6 */	mtlr r0
/* 80141114  38 21 00 10 */	addi r1, r1, 0x10
/* 80141118  4E 80 00 20 */	blr 

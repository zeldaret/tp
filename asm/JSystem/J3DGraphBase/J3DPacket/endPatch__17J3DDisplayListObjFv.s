lbl_80312714:
/* 80312714  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80312718  7C 08 02 A6 */	mflr r0
/* 8031271C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80312720  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80312724  7C 7F 1B 78 */	mr r31, r3
/* 80312728  80 6D 90 20 */	lwz r3, sInterruptFlag__17J3DDisplayListObj(r13)
/* 8031272C  48 02 AF F1 */	bl OSRestoreInterrupts
/* 80312730  38 00 00 00 */	li r0, 0
/* 80312734  90 0D 94 00 */	stw r0, __GDCurrentDL(r13)
/* 80312738  80 7F 00 08 */	lwz r3, 8(r31)
/* 8031273C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80312740  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80312744  7C 08 03 A6 */	mtlr r0
/* 80312748  38 21 00 10 */	addi r1, r1, 0x10
/* 8031274C  4E 80 00 20 */	blr 

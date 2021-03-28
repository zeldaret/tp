lbl_8035AE54:
/* 8035AE54  7C 08 02 A6 */	mflr r0
/* 8035AE58  90 01 00 04 */	stw r0, 4(r1)
/* 8035AE5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8035AE60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8035AE64  93 C1 00 08 */	stw r30, 8(r1)
/* 8035AE68  4B FE 28 8D */	bl OSDisableInterrupts
/* 8035AE6C  83 CD 93 D0 */	lwz r30, __GXCurrentThread(r13)
/* 8035AE70  7C 7F 1B 78 */	mr r31, r3
/* 8035AE74  4B FE 5E 11 */	bl OSGetCurrentThread
/* 8035AE78  90 6D 93 D0 */	stw r3, __GXCurrentThread(r13)
/* 8035AE7C  7F E3 FB 78 */	mr r3, r31
/* 8035AE80  4B FE 28 9D */	bl OSRestoreInterrupts
/* 8035AE84  7F C3 F3 78 */	mr r3, r30
/* 8035AE88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8035AE8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8035AE90  83 C1 00 08 */	lwz r30, 8(r1)
/* 8035AE94  38 21 00 10 */	addi r1, r1, 0x10
/* 8035AE98  7C 08 03 A6 */	mtlr r0
/* 8035AE9C  4E 80 00 20 */	blr 

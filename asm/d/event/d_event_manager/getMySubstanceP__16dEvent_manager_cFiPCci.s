lbl_800480EC:
/* 800480EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800480F0  7C 08 02 A6 */	mflr r0
/* 800480F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800480F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800480FC  93 C1 00 08 */	stw r30, 8(r1)
/* 80048100  7C 7E 1B 78 */	mr r30, r3
/* 80048104  7C DF 33 78 */	mr r31, r6
/* 80048108  38 C0 00 00 */	li r6, 0
/* 8004810C  4B FF FE BD */	bl getMyDataP__16dEvent_manager_cFiPCci
/* 80048110  7C 64 1B 79 */	or. r4, r3, r3
/* 80048114  40 82 00 0C */	bne lbl_80048120
/* 80048118  38 60 00 00 */	li r3, 0
/* 8004811C  48 00 00 10 */	b lbl_8004812C
lbl_80048120:
/* 80048120  7F C3 F3 78 */	mr r3, r30
/* 80048124  7F E5 FB 78 */	mr r5, r31
/* 80048128  4B FF E4 C1 */	bl getSubstance__16dEvent_manager_cFP11dEvDtData_ci
lbl_8004812C:
/* 8004812C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80048130  83 C1 00 08 */	lwz r30, 8(r1)
/* 80048134  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80048138  7C 08 03 A6 */	mtlr r0
/* 8004813C  38 21 00 10 */	addi r1, r1, 0x10
/* 80048140  4E 80 00 20 */	blr 

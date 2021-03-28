lbl_80350554:
/* 80350554  7C 08 02 A6 */	mflr r0
/* 80350558  90 01 00 04 */	stw r0, 4(r1)
/* 8035055C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80350560  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80350564  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80350568  7C 7E 1B 78 */	mr r30, r3
/* 8035056C  83 ED 93 38 */	lwz r31, __AR_Callback(r13)
/* 80350570  4B FE D1 85 */	bl OSDisableInterrupts
/* 80350574  93 CD 93 38 */	stw r30, __AR_Callback(r13)
/* 80350578  4B FE D1 A5 */	bl OSRestoreInterrupts
/* 8035057C  7F E3 FB 78 */	mr r3, r31
/* 80350580  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80350584  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 80350588  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035058C  38 21 00 18 */	addi r1, r1, 0x18
/* 80350590  7C 08 03 A6 */	mtlr r0
/* 80350594  4E 80 00 20 */	blr 

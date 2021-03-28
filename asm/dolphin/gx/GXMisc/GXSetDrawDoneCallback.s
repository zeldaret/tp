lbl_8035C5AC:
/* 8035C5AC  7C 08 02 A6 */	mflr r0
/* 8035C5B0  90 01 00 04 */	stw r0, 4(r1)
/* 8035C5B4  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 8035C5B8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 8035C5BC  93 C1 00 10 */	stw r30, 0x10(r1)
/* 8035C5C0  7C 7E 1B 78 */	mr r30, r3
/* 8035C5C4  83 ED 93 EC */	lwz r31, DrawDoneCB(r13)
/* 8035C5C8  4B FE 11 2D */	bl OSDisableInterrupts
/* 8035C5CC  93 CD 93 EC */	stw r30, DrawDoneCB(r13)
/* 8035C5D0  4B FE 11 4D */	bl OSRestoreInterrupts
/* 8035C5D4  7F E3 FB 78 */	mr r3, r31
/* 8035C5D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8035C5DC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 8035C5E0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 8035C5E4  38 21 00 18 */	addi r1, r1, 0x18
/* 8035C5E8  7C 08 03 A6 */	mtlr r0
/* 8035C5EC  4E 80 00 20 */	blr 

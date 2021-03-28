lbl_806E2568:
/* 806E2568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E256C  7C 08 02 A6 */	mflr r0
/* 806E2570  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E2574  A8 03 05 D4 */	lha r0, 0x5d4(r3)
/* 806E2578  2C 00 00 03 */	cmpwi r0, 3
/* 806E257C  41 82 00 40 */	beq lbl_806E25BC
/* 806E2580  40 80 00 1C */	bge lbl_806E259C
/* 806E2584  2C 00 00 01 */	cmpwi r0, 1
/* 806E2588  41 82 00 4C */	beq lbl_806E25D4
/* 806E258C  40 80 00 4C */	bge lbl_806E25D8
/* 806E2590  2C 00 00 00 */	cmpwi r0, 0
/* 806E2594  40 80 00 30 */	bge lbl_806E25C4
/* 806E2598  48 00 00 40 */	b lbl_806E25D8
lbl_806E259C:
/* 806E259C  2C 00 00 05 */	cmpwi r0, 5
/* 806E25A0  41 82 00 0C */	beq lbl_806E25AC
/* 806E25A4  40 80 00 34 */	bge lbl_806E25D8
/* 806E25A8  48 00 00 0C */	b lbl_806E25B4
lbl_806E25AC:
/* 806E25AC  48 00 04 0D */	bl ShippuAction__8daE_HM_cFv
/* 806E25B0  48 00 00 28 */	b lbl_806E25D8
lbl_806E25B4:
/* 806E25B4  4B FF FE 5D */	bl UpWaitAction__8daE_HM_cFv
/* 806E25B8  48 00 00 20 */	b lbl_806E25D8
lbl_806E25BC:
/* 806E25BC  4B FF FB 41 */	bl UpMoveAction__8daE_HM_cFv
/* 806E25C0  48 00 00 18 */	b lbl_806E25D8
lbl_806E25C4:
/* 806E25C4  38 00 00 01 */	li r0, 1
/* 806E25C8  B0 03 05 D6 */	sth r0, 0x5d6(r3)
/* 806E25CC  4B FF FB 31 */	bl UpMoveAction__8daE_HM_cFv
/* 806E25D0  48 00 00 08 */	b lbl_806E25D8
lbl_806E25D4:
/* 806E25D4  4B FF F8 A5 */	bl UpDeathAction__8daE_HM_cFv
lbl_806E25D8:
/* 806E25D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E25DC  7C 08 03 A6 */	mtlr r0
/* 806E25E0  38 21 00 10 */	addi r1, r1, 0x10
/* 806E25E4  4E 80 00 20 */	blr 

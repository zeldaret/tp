lbl_806AC968:
/* 806AC968  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AC96C  7C 08 02 A6 */	mflr r0
/* 806AC970  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AC974  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806AC978  7C 7F 1B 78 */	mr r31, r3
/* 806AC97C  80 63 06 98 */	lwz r3, 0x698(r3)
/* 806AC980  2C 03 00 00 */	cmpwi r3, 0
/* 806AC984  41 82 00 0C */	beq lbl_806AC990
/* 806AC988  38 03 FF FF */	addi r0, r3, -1
/* 806AC98C  90 1F 06 98 */	stw r0, 0x698(r31)
lbl_806AC990:
/* 806AC990  80 7F 06 9C */	lwz r3, 0x69c(r31)
/* 806AC994  2C 03 00 00 */	cmpwi r3, 0
/* 806AC998  41 82 00 0C */	beq lbl_806AC9A4
/* 806AC99C  38 03 FF FF */	addi r0, r3, -1
/* 806AC9A0  90 1F 06 9C */	stw r0, 0x69c(r31)
lbl_806AC9A4:
/* 806AC9A4  A0 7F 06 94 */	lhz r3, 0x694(r31)
/* 806AC9A8  28 03 00 00 */	cmplwi r3, 0
/* 806AC9AC  41 82 00 0C */	beq lbl_806AC9B8
/* 806AC9B0  38 03 FF FF */	addi r0, r3, -1
/* 806AC9B4  B0 1F 06 94 */	sth r0, 0x694(r31)
lbl_806AC9B8:
/* 806AC9B8  7F E3 FB 78 */	mr r3, r31
/* 806AC9BC  4B FF F9 D5 */	bl action__8daE_DK_cFv
/* 806AC9C0  7F E3 FB 78 */	mr r3, r31
/* 806AC9C4  4B FF FB F9 */	bl mtx_set__8daE_DK_cFv
/* 806AC9C8  7F E3 FB 78 */	mr r3, r31
/* 806AC9CC  4B FF FD 89 */	bl cc_set__8daE_DK_cFv
/* 806AC9D0  38 60 00 01 */	li r3, 1
/* 806AC9D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806AC9D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AC9DC  7C 08 03 A6 */	mtlr r0
/* 806AC9E0  38 21 00 10 */	addi r1, r1, 0x10
/* 806AC9E4  4E 80 00 20 */	blr 

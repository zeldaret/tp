lbl_806AE618:
/* 806AE618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806AE61C  7C 08 02 A6 */	mflr r0
/* 806AE620  90 01 00 14 */	stw r0, 0x14(r1)
/* 806AE624  28 03 00 00 */	cmplwi r3, 0
/* 806AE628  41 82 00 10 */	beq lbl_806AE638
/* 806AE62C  4B FF FF 9D */	bl demo_skip__8daE_DT_cFi
/* 806AE630  38 60 00 01 */	li r3, 1
/* 806AE634  48 00 00 08 */	b lbl_806AE63C
lbl_806AE638:
/* 806AE638  38 60 00 00 */	li r3, 0
lbl_806AE63C:
/* 806AE63C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806AE640  7C 08 03 A6 */	mtlr r0
/* 806AE644  38 21 00 10 */	addi r1, r1, 0x10
/* 806AE648  4E 80 00 20 */	blr 

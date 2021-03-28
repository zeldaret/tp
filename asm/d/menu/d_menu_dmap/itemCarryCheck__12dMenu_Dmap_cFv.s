lbl_801BFC78:
/* 801BFC78  38 80 00 00 */	li r4, 0
/* 801BFC7C  38 A0 00 00 */	li r5, 0
/* 801BFC80  38 00 00 03 */	li r0, 3
/* 801BFC84  7C 09 03 A6 */	mtctr r0
lbl_801BFC88:
/* 801BFC88  38 05 01 74 */	addi r0, r5, 0x174
/* 801BFC8C  7C 03 00 AE */	lbzx r0, r3, r0
/* 801BFC90  28 00 00 00 */	cmplwi r0, 0
/* 801BFC94  41 82 00 08 */	beq lbl_801BFC9C
/* 801BFC98  38 84 00 01 */	addi r4, r4, 1
lbl_801BFC9C:
/* 801BFC9C  38 A5 00 01 */	addi r5, r5, 1
/* 801BFCA0  42 00 FF E8 */	bdnz lbl_801BFC88
/* 801BFCA4  7C 83 23 78 */	mr r3, r4
/* 801BFCA8  4E 80 00 20 */	blr 

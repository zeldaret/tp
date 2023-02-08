lbl_801CCAC4:
/* 801CCAC4  38 80 00 00 */	li r4, 0
/* 801CCAC8  7C 85 23 78 */	mr r5, r4
/* 801CCACC  38 00 00 02 */	li r0, 2
/* 801CCAD0  7C 09 03 A6 */	mtctr r0
lbl_801CCAD4:
/* 801CCAD4  38 04 01 F8 */	addi r0, r4, 0x1f8
/* 801CCAD8  7C A3 01 2E */	stwx r5, r3, r0
/* 801CCADC  38 84 00 04 */	addi r4, r4, 4
/* 801CCAE0  42 00 FF F4 */	bdnz lbl_801CCAD4
/* 801CCAE4  38 A0 00 00 */	li r5, 0
/* 801CCAE8  38 80 00 00 */	li r4, 0
/* 801CCAEC  38 00 00 08 */	li r0, 8
/* 801CCAF0  7C 09 03 A6 */	mtctr r0
lbl_801CCAF4:
/* 801CCAF4  38 05 02 58 */	addi r0, r5, 0x258
/* 801CCAF8  7C 83 01 AE */	stbx r4, r3, r0
/* 801CCAFC  38 A5 00 01 */	addi r5, r5, 1
/* 801CCB00  42 00 FF F4 */	bdnz lbl_801CCAF4
/* 801CCB04  4E 80 00 20 */	blr 

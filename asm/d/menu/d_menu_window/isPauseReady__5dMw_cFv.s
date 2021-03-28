lbl_801FCDD8:
/* 801FCDD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801FCDDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801FCDE0  88 03 4F F0 */	lbz r0, 0x4ff0(r3)
/* 801FCDE4  28 00 00 00 */	cmplwi r0, 0
/* 801FCDE8  40 82 00 10 */	bne lbl_801FCDF8
/* 801FCDEC  A0 03 00 02 */	lhz r0, 2(r3)
/* 801FCDF0  28 00 00 00 */	cmplwi r0, 0
/* 801FCDF4  40 82 00 0C */	bne lbl_801FCE00
lbl_801FCDF8:
/* 801FCDF8  38 60 00 00 */	li r3, 0
/* 801FCDFC  4E 80 00 20 */	blr 
lbl_801FCE00:
/* 801FCE00  38 60 00 01 */	li r3, 1
/* 801FCE04  4E 80 00 20 */	blr 

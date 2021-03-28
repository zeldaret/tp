lbl_801ADEC4:
/* 801ADEC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADEC8  7C 08 02 A6 */	mflr r0
/* 801ADECC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADED0  4B EA C2 85 */	bl dKyw_wether_move_draw2__Fv
/* 801ADED4  38 60 00 01 */	li r3, 1
/* 801ADED8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADEDC  7C 08 03 A6 */	mtlr r0
/* 801ADEE0  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADEE4  4E 80 00 20 */	blr 

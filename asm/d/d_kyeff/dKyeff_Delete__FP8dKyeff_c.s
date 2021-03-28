lbl_801ADDDC:
/* 801ADDDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801ADDE0  7C 08 02 A6 */	mflr r0
/* 801ADDE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 801ADDE8  4B EA 9C 1D */	bl dKyw_wether_delete__Fv
/* 801ADDEC  38 60 00 01 */	li r3, 1
/* 801ADDF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801ADDF4  7C 08 03 A6 */	mtlr r0
/* 801ADDF8  38 21 00 10 */	addi r1, r1, 0x10
/* 801ADDFC  4E 80 00 20 */	blr 

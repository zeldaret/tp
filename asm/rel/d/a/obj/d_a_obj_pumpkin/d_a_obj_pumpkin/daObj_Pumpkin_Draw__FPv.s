lbl_80CB8204:
/* 80CB8204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB8208  7C 08 02 A6 */	mflr r0
/* 80CB820C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB8210  4B FF F4 29 */	bl Draw__15daObj_Pumpkin_cFv
/* 80CB8214  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB8218  7C 08 03 A6 */	mtlr r0
/* 80CB821C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8220  4E 80 00 20 */	blr 

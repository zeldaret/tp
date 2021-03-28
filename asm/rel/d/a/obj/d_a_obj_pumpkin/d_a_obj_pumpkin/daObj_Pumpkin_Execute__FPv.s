lbl_80CB81E4:
/* 80CB81E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB81E8  7C 08 02 A6 */	mflr r0
/* 80CB81EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB81F0  4B FF DE 5D */	bl Execute__15daObj_Pumpkin_cFv
/* 80CB81F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB81F8  7C 08 03 A6 */	mtlr r0
/* 80CB81FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB8200  4E 80 00 20 */	blr 

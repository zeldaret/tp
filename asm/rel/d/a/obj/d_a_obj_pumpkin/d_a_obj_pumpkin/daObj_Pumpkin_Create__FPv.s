lbl_80CB81A4:
/* 80CB81A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB81A8  7C 08 02 A6 */	mflr r0
/* 80CB81AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB81B0  4B FF D8 55 */	bl create__15daObj_Pumpkin_cFv
/* 80CB81B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB81B8  7C 08 03 A6 */	mtlr r0
/* 80CB81BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB81C0  4E 80 00 20 */	blr 

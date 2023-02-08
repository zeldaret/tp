lbl_80CB81C4:
/* 80CB81C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB81C8  7C 08 02 A6 */	mflr r0
/* 80CB81CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB81D0  4B FF DE 49 */	bl Delete__15daObj_Pumpkin_cFv
/* 80CB81D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB81D8  7C 08 03 A6 */	mtlr r0
/* 80CB81DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB81E0  4E 80 00 20 */	blr 

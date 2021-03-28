lbl_80BF47D8:
/* 80BF47D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BF47DC  7C 08 02 A6 */	mflr r0
/* 80BF47E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BF47E4  4B FF F7 C9 */	bl Draw__14daObj_Gadget_cFv
/* 80BF47E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BF47EC  7C 08 03 A6 */	mtlr r0
/* 80BF47F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BF47F4  4E 80 00 20 */	blr 

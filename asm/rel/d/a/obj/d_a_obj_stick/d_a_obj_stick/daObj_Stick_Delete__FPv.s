lbl_80599CAC:
/* 80599CAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80599CB0  7C 08 02 A6 */	mflr r0
/* 80599CB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80599CB8  4B FF FC 49 */	bl Delete__13daObj_Stick_cFv
/* 80599CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80599CC0  7C 08 03 A6 */	mtlr r0
/* 80599CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 80599CC8  4E 80 00 20 */	blr 

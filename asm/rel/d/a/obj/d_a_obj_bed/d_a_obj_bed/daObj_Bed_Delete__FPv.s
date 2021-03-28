lbl_80BAE054:
/* 80BAE054  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAE058  7C 08 02 A6 */	mflr r0
/* 80BAE05C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAE060  4B FF FC 21 */	bl Delete__11daObj_Bed_cFv
/* 80BAE064  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE068  7C 08 03 A6 */	mtlr r0
/* 80BAE06C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE070  4E 80 00 20 */	blr 

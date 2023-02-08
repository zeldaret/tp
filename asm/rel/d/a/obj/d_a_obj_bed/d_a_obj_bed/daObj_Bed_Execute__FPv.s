lbl_80BAE074:
/* 80BAE074  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAE078  7C 08 02 A6 */	mflr r0
/* 80BAE07C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAE080  4B FF FC 35 */	bl Execute__11daObj_Bed_cFv
/* 80BAE084  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE088  7C 08 03 A6 */	mtlr r0
/* 80BAE08C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE090  4E 80 00 20 */	blr 

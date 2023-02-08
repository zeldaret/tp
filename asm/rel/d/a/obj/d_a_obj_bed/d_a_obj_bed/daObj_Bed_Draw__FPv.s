lbl_80BAE094:
/* 80BAE094  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BAE098  7C 08 02 A6 */	mflr r0
/* 80BAE09C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BAE0A0  4B FF FD 55 */	bl Draw__11daObj_Bed_cFv
/* 80BAE0A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAE0A8  7C 08 03 A6 */	mtlr r0
/* 80BAE0AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAE0B0  4E 80 00 20 */	blr 

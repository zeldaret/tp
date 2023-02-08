lbl_80CD47B8:
/* 80CD47B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD47BC  7C 08 02 A6 */	mflr r0
/* 80CD47C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD47C4  4B FF A4 C5 */	bl Execute__15daObj_Sekizoa_cFv
/* 80CD47C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD47CC  7C 08 03 A6 */	mtlr r0
/* 80CD47D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD47D4  4E 80 00 20 */	blr 

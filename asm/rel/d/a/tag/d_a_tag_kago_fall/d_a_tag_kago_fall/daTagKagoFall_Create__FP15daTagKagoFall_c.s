lbl_80D5A6C4:
/* 80D5A6C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5A6C8  7C 08 02 A6 */	mflr r0
/* 80D5A6CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5A6D0  4B FF F5 89 */	bl create__15daTagKagoFall_cFv
/* 80D5A6D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5A6D8  7C 08 03 A6 */	mtlr r0
/* 80D5A6DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5A6E0  4E 80 00 20 */	blr 

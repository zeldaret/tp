lbl_80CCD8D8:
/* 80CCD8D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CCD8DC  7C 08 02 A6 */	mflr r0
/* 80CCD8E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CCD8E4  4B FF F7 49 */	bl create__16daObj_SekiDoor_cFv
/* 80CCD8E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CCD8EC  7C 08 03 A6 */	mtlr r0
/* 80CCD8F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CCD8F4  4E 80 00 20 */	blr 

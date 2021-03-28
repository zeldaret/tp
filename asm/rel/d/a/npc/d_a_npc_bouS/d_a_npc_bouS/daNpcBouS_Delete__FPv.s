lbl_80976B68:
/* 80976B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80976B6C  7C 08 02 A6 */	mflr r0
/* 80976B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80976B74  4B FF D4 55 */	bl Delete__11daNpcBouS_cFv
/* 80976B78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80976B7C  7C 08 03 A6 */	mtlr r0
/* 80976B80  38 21 00 10 */	addi r1, r1, 0x10
/* 80976B84  4E 80 00 20 */	blr 

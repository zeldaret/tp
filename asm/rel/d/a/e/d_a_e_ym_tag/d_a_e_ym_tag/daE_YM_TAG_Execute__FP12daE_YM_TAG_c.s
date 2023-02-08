lbl_80815EF8:
/* 80815EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80815EFC  7C 08 02 A6 */	mflr r0
/* 80815F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 80815F04  4B FF FF 89 */	bl execute__12daE_YM_TAG_cFv
/* 80815F08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80815F0C  7C 08 03 A6 */	mtlr r0
/* 80815F10  38 21 00 10 */	addi r1, r1, 0x10
/* 80815F14  4E 80 00 20 */	blr 

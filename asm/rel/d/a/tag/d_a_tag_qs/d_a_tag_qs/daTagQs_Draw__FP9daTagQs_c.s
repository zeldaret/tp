lbl_80D5EC00:
/* 80D5EC00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D5EC04  7C 08 02 A6 */	mflr r0
/* 80D5EC08  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D5EC0C  4B FF FF ED */	bl draw__9daTagQs_cFv
/* 80D5EC10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D5EC14  7C 08 03 A6 */	mtlr r0
/* 80D5EC18  38 21 00 10 */	addi r1, r1, 0x10
/* 80D5EC1C  4E 80 00 20 */	blr 

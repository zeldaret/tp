lbl_80CC8EF4:
/* 80CC8EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC8EF8  7C 08 02 A6 */	mflr r0
/* 80CC8EFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC8F00  4B FF E3 29 */	bl draw__11daSCannon_cFv
/* 80CC8F04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC8F08  7C 08 03 A6 */	mtlr r0
/* 80CC8F0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC8F10  4E 80 00 20 */	blr 

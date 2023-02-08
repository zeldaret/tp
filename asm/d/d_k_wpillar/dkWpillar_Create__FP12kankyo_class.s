lbl_80261F04:
/* 80261F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80261F08  7C 08 02 A6 */	mflr r0
/* 80261F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80261F10  4B FF FC 45 */	bl create__11dkWpillar_cFv
/* 80261F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80261F18  7C 08 03 A6 */	mtlr r0
/* 80261F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80261F20  4E 80 00 20 */	blr 

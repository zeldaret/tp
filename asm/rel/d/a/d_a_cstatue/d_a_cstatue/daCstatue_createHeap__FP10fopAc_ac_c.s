lbl_80663D08:
/* 80663D08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80663D0C  7C 08 02 A6 */	mflr r0
/* 80663D10  90 01 00 14 */	stw r0, 0x14(r1)
/* 80663D14  4B FF F9 D9 */	bl createHeap__11daCstatue_cFv
/* 80663D18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80663D1C  7C 08 03 A6 */	mtlr r0
/* 80663D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80663D24  4E 80 00 20 */	blr 

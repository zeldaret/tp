lbl_80990E34:
/* 80990E34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80990E38  7C 08 02 A6 */	mflr r0
/* 80990E3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80990E40  4B FF BE A5 */	bl Delete__11daNpcChin_cFv
/* 80990E44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80990E48  7C 08 03 A6 */	mtlr r0
/* 80990E4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80990E50  4E 80 00 20 */	blr 

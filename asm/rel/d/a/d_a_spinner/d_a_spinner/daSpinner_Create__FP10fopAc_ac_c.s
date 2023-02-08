lbl_804D1FB0:
/* 804D1FB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D1FB4  7C 08 02 A6 */	mflr r0
/* 804D1FB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D1FBC  4B FF FA B5 */	bl create__11daSpinner_cFv
/* 804D1FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D1FC4  7C 08 03 A6 */	mtlr r0
/* 804D1FC8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D1FCC  4E 80 00 20 */	blr 

lbl_80B437BC:
/* 80B437BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B437C0  7C 08 02 A6 */	mflr r0
/* 80B437C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B437C8  4B 60 4D 64 */	b execute__8daNpcT_cFv
/* 80B437CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B437D0  7C 08 03 A6 */	mtlr r0
/* 80B437D4  38 21 00 10 */	addi r1, r1, 0x10
/* 80B437D8  4E 80 00 20 */	blr 

lbl_805AD8EC:
/* 805AD8EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AD8F0  7C 08 02 A6 */	mflr r0
/* 805AD8F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AD8F8  4B FF FF 85 */	bl _delete__9daL7ODR_cFv
/* 805AD8FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AD900  7C 08 03 A6 */	mtlr r0
/* 805AD904  38 21 00 10 */	addi r1, r1, 0x10
/* 805AD908  4E 80 00 20 */	blr 

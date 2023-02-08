lbl_807C11FC:
/* 807C11FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807C1200  7C 08 02 A6 */	mflr r0
/* 807C1204  90 01 00 14 */	stw r0, 0x14(r1)
/* 807C1208  4B FF FF 5D */	bl _delete__8daE_TT_cFv
/* 807C120C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C1210  7C 08 03 A6 */	mtlr r0
/* 807C1214  38 21 00 10 */	addi r1, r1, 0x10
/* 807C1218  4E 80 00 20 */	blr 

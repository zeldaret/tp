lbl_805A4AA8:
/* 805A4AA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A4AAC  7C 08 02 A6 */	mflr r0
/* 805A4AB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A4AB4  4B FF FC A9 */	bl execute__12daTagHstop_cFv
/* 805A4AB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A4ABC  7C 08 03 A6 */	mtlr r0
/* 805A4AC0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A4AC4  4E 80 00 20 */	blr 

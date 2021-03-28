lbl_805AA798:
/* 805AA798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA79C  7C 08 02 A6 */	mflr r0
/* 805AA7A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA7A4  4B FF FF A5 */	bl _delete__11daL7lowDr_cFv
/* 805AA7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA7AC  7C 08 03 A6 */	mtlr r0
/* 805AA7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA7B4  4E 80 00 20 */	blr 

lbl_80CD81B8:
/* 80CD81B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CD81BC  7C 08 02 A6 */	mflr r0
/* 80CD81C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CD81C4  4B FF FF 7D */	bl _delete__14daItemShield_cFv
/* 80CD81C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CD81CC  7C 08 03 A6 */	mtlr r0
/* 80CD81D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CD81D4  4E 80 00 20 */	blr 

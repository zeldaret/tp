lbl_8007E9A4:
/* 8007E9A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007E9A8  7C 08 02 A6 */	mflr r0
/* 8007E9AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007E9B0  81 03 00 18 */	lwz r8, 0x18(r3)
/* 8007E9B4  81 08 00 08 */	lwz r8, 8(r8)
/* 8007E9B8  54 80 20 36 */	slwi r0, r4, 4
/* 8007E9BC  7C 88 02 14 */	add r4, r8, r0
/* 8007E9C0  48 00 00 15 */	bl GetTriPnt__8dBgWKColCFPC12KC_PrismDataP3VecP3VecP3Vec
/* 8007E9C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007E9C8  7C 08 03 A6 */	mtlr r0
/* 8007E9CC  38 21 00 10 */	addi r1, r1, 0x10
/* 8007E9D0  4E 80 00 20 */	blr 

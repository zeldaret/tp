lbl_80BE99E0:
/* 80BE99E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE99E4  7C 08 02 A6 */	mflr r0
/* 80BE99E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE99EC  4B FF FA F9 */	bl execute__14daObjFPillar_cFv
/* 80BE99F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE99F4  7C 08 03 A6 */	mtlr r0
/* 80BE99F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE99FC  4E 80 00 20 */	blr 

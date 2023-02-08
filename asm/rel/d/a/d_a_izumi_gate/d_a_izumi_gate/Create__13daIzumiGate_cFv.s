lbl_808492D8:
/* 808492D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 808492DC  7C 08 02 A6 */	mflr r0
/* 808492E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 808492E4  4B FF FD B5 */	bl initBaseMtx__13daIzumiGate_cFv
/* 808492E8  38 60 00 04 */	li r3, 4
/* 808492EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 808492F0  7C 08 03 A6 */	mtlr r0
/* 808492F4  38 21 00 10 */	addi r1, r1, 0x10
/* 808492F8  4E 80 00 20 */	blr 

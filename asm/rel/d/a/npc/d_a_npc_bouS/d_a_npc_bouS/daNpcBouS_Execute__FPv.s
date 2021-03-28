lbl_80976B88:
/* 80976B88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80976B8C  7C 08 02 A6 */	mflr r0
/* 80976B90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80976B94  4B FF D4 69 */	bl Execute__11daNpcBouS_cFv
/* 80976B98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80976B9C  7C 08 03 A6 */	mtlr r0
/* 80976BA0  38 21 00 10 */	addi r1, r1, 0x10
/* 80976BA4  4E 80 00 20 */	blr 

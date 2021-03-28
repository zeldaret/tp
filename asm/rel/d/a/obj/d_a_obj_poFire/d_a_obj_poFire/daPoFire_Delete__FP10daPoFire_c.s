lbl_80CB3CE4:
/* 80CB3CE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB3CE8  7C 08 02 A6 */	mflr r0
/* 80CB3CEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3CF0  4B FF FF 85 */	bl Delete__10daPoFire_cFv
/* 80CB3CF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB3CF8  7C 08 03 A6 */	mtlr r0
/* 80CB3CFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3D00  4E 80 00 20 */	blr 

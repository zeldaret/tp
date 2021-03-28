lbl_80CB3D04:
/* 80CB3D04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB3D08  7C 08 02 A6 */	mflr r0
/* 80CB3D0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB3D10  4B FF ED 65 */	bl create__10daPoFire_cFv
/* 80CB3D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB3D18  7C 08 03 A6 */	mtlr r0
/* 80CB3D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB3D20  4E 80 00 20 */	blr 

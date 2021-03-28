lbl_80B003D4:
/* 80B003D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B003D8  7C 08 02 A6 */	mflr r0
/* 80B003DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B003E0  4B FF CE 71 */	bl Draw__11daNpcTheB_cFv
/* 80B003E4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B003E8  7C 08 03 A6 */	mtlr r0
/* 80B003EC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B003F0  4E 80 00 20 */	blr 

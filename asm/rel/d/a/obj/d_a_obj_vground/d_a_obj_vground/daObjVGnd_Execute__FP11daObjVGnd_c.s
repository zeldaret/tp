lbl_80D219A0:
/* 80D219A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D219A4  7C 08 02 A6 */	mflr r0
/* 80D219A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D219AC  4B FF FD FD */	bl execute__11daObjVGnd_cFv
/* 80D219B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D219B4  7C 08 03 A6 */	mtlr r0
/* 80D219B8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D219BC  4E 80 00 20 */	blr 

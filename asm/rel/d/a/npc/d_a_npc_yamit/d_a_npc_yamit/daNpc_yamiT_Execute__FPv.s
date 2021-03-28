lbl_80B4BB04:
/* 80B4BB04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4BB08  7C 08 02 A6 */	mflr r0
/* 80B4BB0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4BB10  4B FF E9 4D */	bl Execute__13daNpc_yamiT_cFv
/* 80B4BB14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4BB18  7C 08 03 A6 */	mtlr r0
/* 80B4BB1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4BB20  4E 80 00 20 */	blr 

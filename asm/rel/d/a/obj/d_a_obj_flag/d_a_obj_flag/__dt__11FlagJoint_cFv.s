lbl_80BEC3BC:
/* 80BEC3BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEC3C0  7C 08 02 A6 */	mflr r0
/* 80BEC3C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEC3C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEC3CC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEC3D0  41 82 00 10 */	beq lbl_80BEC3E0
/* 80BEC3D4  7C 80 07 35 */	extsh. r0, r4
/* 80BEC3D8  40 81 00 08 */	ble lbl_80BEC3E0
/* 80BEC3DC  4B 6E 29 61 */	bl __dl__FPv
lbl_80BEC3E0:
/* 80BEC3E0  7F E3 FB 78 */	mr r3, r31
/* 80BEC3E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEC3E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEC3EC  7C 08 03 A6 */	mtlr r0
/* 80BEC3F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEC3F4  4E 80 00 20 */	blr 

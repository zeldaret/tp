lbl_80B7A3B4:
/* 80B7A3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B7A3B8  7C 08 02 A6 */	mflr r0
/* 80B7A3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B7A3C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B7A3C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7A3C8  41 82 00 10 */	beq lbl_80B7A3D8
/* 80B7A3CC  7C 80 07 35 */	extsh. r0, r4
/* 80B7A3D0  40 81 00 08 */	ble lbl_80B7A3D8
/* 80B7A3D4  4B 75 49 69 */	bl __dl__FPv
lbl_80B7A3D8:
/* 80B7A3D8  7F E3 FB 78 */	mr r3, r31
/* 80B7A3DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7A3E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B7A3E4  7C 08 03 A6 */	mtlr r0
/* 80B7A3E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B7A3EC  4E 80 00 20 */	blr 

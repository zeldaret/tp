lbl_80BFB3D4:
/* 80BFB3D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BFB3D8  7C 08 02 A6 */	mflr r0
/* 80BFB3DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BFB3E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BFB3E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BFB3E8  41 82 00 10 */	beq lbl_80BFB3F8
/* 80BFB3EC  7C 80 07 35 */	extsh. r0, r4
/* 80BFB3F0  40 81 00 08 */	ble lbl_80BFB3F8
/* 80BFB3F4  4B 6D 39 49 */	bl __dl__FPv
lbl_80BFB3F8:
/* 80BFB3F8  7F E3 FB 78 */	mr r3, r31
/* 80BFB3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BFB400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BFB404  7C 08 03 A6 */	mtlr r0
/* 80BFB408  38 21 00 10 */	addi r1, r1, 0x10
/* 80BFB40C  4E 80 00 20 */	blr 

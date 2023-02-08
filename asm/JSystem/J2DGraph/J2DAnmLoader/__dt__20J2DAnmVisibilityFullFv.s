lbl_8030A3B4:
/* 8030A3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8030A3B8  7C 08 02 A6 */	mflr r0
/* 8030A3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030A3C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8030A3C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 8030A3C8  41 82 00 30 */	beq lbl_8030A3F8
/* 8030A3CC  3C 60 80 3D */	lis r3, __vt__20J2DAnmVisibilityFull@ha /* 0x803CD704@ha */
/* 8030A3D0  38 03 D7 04 */	addi r0, r3, __vt__20J2DAnmVisibilityFull@l /* 0x803CD704@l */
/* 8030A3D4  90 1F 00 00 */	stw r0, 0(r31)
/* 8030A3D8  41 82 00 10 */	beq lbl_8030A3E8
/* 8030A3DC  3C 60 80 3B */	lis r3, __vt__10J2DAnmBase@ha /* 0x803A8E04@ha */
/* 8030A3E0  38 03 8E 04 */	addi r0, r3, __vt__10J2DAnmBase@l /* 0x803A8E04@l */
/* 8030A3E4  90 1F 00 00 */	stw r0, 0(r31)
lbl_8030A3E8:
/* 8030A3E8  7C 80 07 35 */	extsh. r0, r4
/* 8030A3EC  40 81 00 0C */	ble lbl_8030A3F8
/* 8030A3F0  7F E3 FB 78 */	mr r3, r31
/* 8030A3F4  4B FC 49 49 */	bl __dl__FPv
lbl_8030A3F8:
/* 8030A3F8  7F E3 FB 78 */	mr r3, r31
/* 8030A3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030A400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8030A404  7C 08 03 A6 */	mtlr r0
/* 8030A408  38 21 00 10 */	addi r1, r1, 0x10
/* 8030A40C  4E 80 00 20 */	blr 

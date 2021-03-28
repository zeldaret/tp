lbl_802ED3A4:
/* 802ED3A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802ED3A8  7C 08 02 A6 */	mflr r0
/* 802ED3AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802ED3B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802ED3B4  93 C1 00 08 */	stw r30, 8(r1)
/* 802ED3B8  7C 7E 1B 78 */	mr r30, r3
/* 802ED3BC  7C 9F 23 79 */	or. r31, r4, r4
/* 802ED3C0  40 82 00 0C */	bne lbl_802ED3CC
/* 802ED3C4  38 60 00 00 */	li r3, 0
/* 802ED3C8  48 00 00 44 */	b lbl_802ED40C
lbl_802ED3CC:
/* 802ED3CC  88 1E 00 78 */	lbz r0, 0x78(r30)
/* 802ED3D0  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 802ED3D4  41 82 00 24 */	beq lbl_802ED3F8
/* 802ED3D8  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 802ED3DC  28 03 00 00 */	cmplwi r3, 0
/* 802ED3E0  41 82 00 18 */	beq lbl_802ED3F8
/* 802ED3E4  38 80 00 01 */	li r4, 1
/* 802ED3E8  81 83 00 00 */	lwz r12, 0(r3)
/* 802ED3EC  81 8C 00 08 */	lwz r12, 8(r12)
/* 802ED3F0  7D 89 03 A6 */	mtctr r12
/* 802ED3F4  4E 80 04 21 */	bctrl 
lbl_802ED3F8:
/* 802ED3F8  93 FE 00 74 */	stw r31, 0x74(r30)
/* 802ED3FC  88 1E 00 78 */	lbz r0, 0x78(r30)
/* 802ED400  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 802ED404  98 1E 00 78 */	stb r0, 0x78(r30)
/* 802ED408  38 60 00 01 */	li r3, 1
lbl_802ED40C:
/* 802ED40C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802ED410  83 C1 00 08 */	lwz r30, 8(r1)
/* 802ED414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802ED418  7C 08 03 A6 */	mtlr r0
/* 802ED41C  38 21 00 10 */	addi r1, r1, 0x10
/* 802ED420  4E 80 00 20 */	blr 

lbl_802EA38C:
/* 802EA38C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA390  7C 08 02 A6 */	mflr r0
/* 802EA394  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA398  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA39C  7C 7F 1B 78 */	mr r31, r3
/* 802EA3A0  88 03 00 0E */	lbz r0, 0xe(r3)
/* 802EA3A4  28 00 00 00 */	cmplwi r0, 0
/* 802EA3A8  41 82 00 54 */	beq lbl_802EA3FC
/* 802EA3AC  38 7F 00 10 */	addi r3, r31, 0x10
/* 802EA3B0  48 00 10 75 */	bl setGX__13J2DColorBlockFv
/* 802EA3B4  38 7F 00 28 */	addi r3, r31, 0x28
/* 802EA3B8  48 00 11 B9 */	bl setGX__14J2DTexGenBlockFv
/* 802EA3BC  80 7F 00 70 */	lwz r3, 0x70(r31)
/* 802EA3C0  28 03 00 00 */	cmplwi r3, 0
/* 802EA3C4  41 82 00 14 */	beq lbl_802EA3D8
/* 802EA3C8  81 83 00 00 */	lwz r12, 0(r3)
/* 802EA3CC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802EA3D0  7D 89 03 A6 */	mtctr r12
/* 802EA3D4  4E 80 04 21 */	bctrl 
lbl_802EA3D8:
/* 802EA3D8  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 802EA3DC  28 03 00 00 */	cmplwi r3, 0
/* 802EA3E0  41 82 00 14 */	beq lbl_802EA3F4
/* 802EA3E4  81 83 00 00 */	lwz r12, 0(r3)
/* 802EA3E8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802EA3EC  7D 89 03 A6 */	mtctr r12
/* 802EA3F0  4E 80 04 21 */	bctrl 
lbl_802EA3F4:
/* 802EA3F4  38 7F 00 78 */	addi r3, r31, 0x78
/* 802EA3F8  48 00 74 49 */	bl setGX__10J2DPEBlockFv
lbl_802EA3FC:
/* 802EA3FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA404  7C 08 03 A6 */	mtlr r0
/* 802EA408  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA40C  4E 80 00 20 */	blr 

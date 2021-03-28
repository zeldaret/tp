lbl_802FD964:
/* 802FD964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802FD968  7C 08 02 A6 */	mflr r0
/* 802FD96C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802FD970  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802FD974  93 C1 00 08 */	stw r30, 8(r1)
/* 802FD978  7C 7E 1B 78 */	mr r30, r3
/* 802FD97C  7C BF 2B 78 */	mr r31, r5
/* 802FD980  7C 83 23 78 */	mr r3, r4
/* 802FD984  4B FF BC BD */	bl getNameResource__9J2DScreenFPCc
/* 802FD988  7C 64 1B 78 */	mr r4, r3
/* 802FD98C  7F C3 F3 78 */	mr r3, r30
/* 802FD990  7F E5 FB 78 */	mr r5, r31
/* 802FD994  81 9E 00 00 */	lwz r12, 0(r30)
/* 802FD998  81 8C 01 10 */	lwz r12, 0x110(r12)
/* 802FD99C  7D 89 03 A6 */	mtctr r12
/* 802FD9A0  4E 80 04 21 */	bctrl 
/* 802FD9A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802FD9A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802FD9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FD9B0  7C 08 03 A6 */	mtlr r0
/* 802FD9B4  38 21 00 10 */	addi r1, r1, 0x10
/* 802FD9B8  4E 80 00 20 */	blr 

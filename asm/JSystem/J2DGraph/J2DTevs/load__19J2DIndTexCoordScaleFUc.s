lbl_802EA0CC:
/* 802EA0CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA0D0  7C 08 02 A6 */	mflr r0
/* 802EA0D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA0D8  7C 65 1B 78 */	mr r5, r3
/* 802EA0DC  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 802EA0E0  88 85 00 00 */	lbz r4, 0(r5)
/* 802EA0E4  88 A5 00 01 */	lbz r5, 1(r5)
/* 802EA0E8  48 07 4D BD */	bl GXSetIndTexCoordScale
/* 802EA0EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA0F0  7C 08 03 A6 */	mtlr r0
/* 802EA0F4  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA0F8  4E 80 00 20 */	blr 

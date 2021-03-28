lbl_802EA0FC:
/* 802EA0FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA100  7C 08 02 A6 */	mflr r0
/* 802EA104  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA108  7C 65 1B 78 */	mr r5, r3
/* 802EA10C  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 802EA110  88 85 00 00 */	lbz r4, 0(r5)
/* 802EA114  88 A5 00 01 */	lbz r5, 1(r5)
/* 802EA118  48 07 4E D1 */	bl GXSetIndTexOrder
/* 802EA11C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA120  7C 08 03 A6 */	mtlr r0
/* 802EA124  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA128  4E 80 00 20 */	blr 

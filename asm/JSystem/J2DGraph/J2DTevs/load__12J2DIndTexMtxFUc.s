lbl_802EA098:
/* 802EA098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA09C  7C 08 02 A6 */	mflr r0
/* 802EA0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA0A4  7C 65 1B 78 */	mr r5, r3
/* 802EA0A8  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 802EA0AC  38 63 00 01 */	addi r3, r3, 1
/* 802EA0B0  7C A4 2B 78 */	mr r4, r5
/* 802EA0B4  88 A5 00 18 */	lbz r5, 0x18(r5)
/* 802EA0B8  48 07 4C 75 */	bl GXSetIndTexMtx
/* 802EA0BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA0C0  7C 08 03 A6 */	mtlr r0
/* 802EA0C4  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA0C8  4E 80 00 20 */	blr 

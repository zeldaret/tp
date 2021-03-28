lbl_802D16B8:
/* 802D16B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D16BC  7C 08 02 A6 */	mflr r0
/* 802D16C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D16C4  39 61 00 20 */	addi r11, r1, 0x20
/* 802D16C8  48 09 0B 15 */	bl _savegpr_29
/* 802D16CC  7C 7D 1B 78 */	mr r29, r3
/* 802D16D0  7C 9E 23 78 */	mr r30, r4
/* 802D16D4  7C BF 2B 78 */	mr r31, r5
/* 802D16D8  4B FF FD A5 */	bl __ct__11JKRDisposerFv
/* 802D16DC  3C 60 80 3D */	lis r3, __vt__9JKRThread@ha
/* 802D16E0  38 03 C1 14 */	addi r0, r3, __vt__9JKRThread@l
/* 802D16E4  90 1D 00 00 */	stw r0, 0(r29)
/* 802D16E8  38 7D 00 18 */	addi r3, r29, 0x18
/* 802D16EC  7F A4 EB 78 */	mr r4, r29
/* 802D16F0  48 00 A7 0D */	bl __ct__10JSUPtrLinkFPv
/* 802D16F4  38 00 00 00 */	li r0, 0
/* 802D16F8  90 1D 00 68 */	stw r0, 0x68(r29)
/* 802D16FC  90 1D 00 64 */	stw r0, 0x64(r29)
/* 802D1700  90 1D 00 6C */	stw r0, 0x6c(r29)
/* 802D1704  98 1D 00 60 */	stb r0, 0x60(r29)
/* 802D1708  90 1D 00 70 */	stw r0, 0x70(r29)
/* 802D170C  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802D1710  93 DD 00 2C */	stw r30, 0x2c(r29)
/* 802D1714  80 7E 03 04 */	lwz r3, 0x304(r30)
/* 802D1718  80 1E 03 08 */	lwz r0, 0x308(r30)
/* 802D171C  7C 03 00 50 */	subf r0, r3, r0
/* 802D1720  90 1D 00 5C */	stw r0, 0x5c(r29)
/* 802D1724  80 1E 03 04 */	lwz r0, 0x304(r30)
/* 802D1728  90 1D 00 58 */	stw r0, 0x58(r29)
/* 802D172C  7F A3 EB 78 */	mr r3, r29
/* 802D1730  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
/* 802D1734  7F E5 FB 78 */	mr r5, r31
/* 802D1738  48 00 00 F9 */	bl setCommon_mesgQueue__9JKRThreadFP7JKRHeapi
/* 802D173C  7F A3 EB 78 */	mr r3, r29
/* 802D1740  39 61 00 20 */	addi r11, r1, 0x20
/* 802D1744  48 09 0A E5 */	bl _restgpr_29
/* 802D1748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D174C  7C 08 03 A6 */	mtlr r0
/* 802D1750  38 21 00 20 */	addi r1, r1, 0x20
/* 802D1754  4E 80 00 20 */	blr 

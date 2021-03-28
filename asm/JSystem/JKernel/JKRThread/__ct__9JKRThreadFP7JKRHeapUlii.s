lbl_802D1610:
/* 802D1610  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D1614  7C 08 02 A6 */	mflr r0
/* 802D1618  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D161C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D1620  48 09 0B B5 */	bl _savegpr_27
/* 802D1624  7C 7B 1B 78 */	mr r27, r3
/* 802D1628  7C 9C 23 78 */	mr r28, r4
/* 802D162C  7C BD 2B 78 */	mr r29, r5
/* 802D1630  7C DE 33 78 */	mr r30, r6
/* 802D1634  7C FF 3B 78 */	mr r31, r7
/* 802D1638  4B FF FE 45 */	bl __ct__11JKRDisposerFv
/* 802D163C  3C 60 80 3D */	lis r3, __vt__9JKRThread@ha
/* 802D1640  38 03 C1 14 */	addi r0, r3, __vt__9JKRThread@l
/* 802D1644  90 1B 00 00 */	stw r0, 0(r27)
/* 802D1648  38 7B 00 18 */	addi r3, r27, 0x18
/* 802D164C  7F 64 DB 78 */	mr r4, r27
/* 802D1650  48 00 A7 AD */	bl __ct__10JSUPtrLinkFPv
/* 802D1654  38 00 00 00 */	li r0, 0
/* 802D1658  90 1B 00 68 */	stw r0, 0x68(r27)
/* 802D165C  90 1B 00 64 */	stw r0, 0x64(r27)
/* 802D1660  90 1B 00 6C */	stw r0, 0x6c(r27)
/* 802D1664  98 1B 00 60 */	stb r0, 0x60(r27)
/* 802D1668  90 1B 00 70 */	stw r0, 0x70(r27)
/* 802D166C  28 1C 00 00 */	cmplwi r28, 0
/* 802D1670  40 82 00 08 */	bne lbl_802D1678
/* 802D1674  83 8D 8D F4 */	lwz r28, sCurrentHeap__7JKRHeap(r13)
lbl_802D1678:
/* 802D1678  7F 63 DB 78 */	mr r3, r27
/* 802D167C  7F 84 E3 78 */	mr r4, r28
/* 802D1680  7F A5 EB 78 */	mr r5, r29
/* 802D1684  7F E6 FB 78 */	mr r6, r31
/* 802D1688  48 00 02 1D */	bl setCommon_heapSpecified__9JKRThreadFP7JKRHeapUli
/* 802D168C  7F 63 DB 78 */	mr r3, r27
/* 802D1690  80 9B 00 28 */	lwz r4, 0x28(r27)
/* 802D1694  7F C5 F3 78 */	mr r5, r30
/* 802D1698  48 00 01 99 */	bl setCommon_mesgQueue__9JKRThreadFP7JKRHeapi
/* 802D169C  7F 63 DB 78 */	mr r3, r27
/* 802D16A0  39 61 00 20 */	addi r11, r1, 0x20
/* 802D16A4  48 09 0B 7D */	bl _restgpr_27
/* 802D16A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D16AC  7C 08 03 A6 */	mtlr r0
/* 802D16B0  38 21 00 20 */	addi r1, r1, 0x20
/* 802D16B4  4E 80 00 20 */	blr 

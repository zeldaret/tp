lbl_802D1568:
/* 802D1568  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D156C  7C 08 02 A6 */	mflr r0
/* 802D1570  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D1574  39 61 00 20 */	addi r11, r1, 0x20
/* 802D1578  48 09 0C 61 */	bl _savegpr_28
/* 802D157C  7C 7C 1B 78 */	mr r28, r3
/* 802D1580  7C 9D 23 78 */	mr r29, r4
/* 802D1584  7C BE 2B 78 */	mr r30, r5
/* 802D1588  7C DF 33 78 */	mr r31, r6
/* 802D158C  4B FF FE F1 */	bl __ct__11JKRDisposerFv
/* 802D1590  3C 60 80 3D */	lis r3, __vt__9JKRThread@ha
/* 802D1594  38 03 C1 14 */	addi r0, r3, __vt__9JKRThread@l
/* 802D1598  90 1C 00 00 */	stw r0, 0(r28)
/* 802D159C  38 7C 00 18 */	addi r3, r28, 0x18
/* 802D15A0  7F 84 E3 78 */	mr r4, r28
/* 802D15A4  48 00 A8 59 */	bl __ct__10JSUPtrLinkFPv
/* 802D15A8  38 00 00 00 */	li r0, 0
/* 802D15AC  90 1C 00 68 */	stw r0, 0x68(r28)
/* 802D15B0  90 1C 00 64 */	stw r0, 0x64(r28)
/* 802D15B4  90 1C 00 6C */	stw r0, 0x6c(r28)
/* 802D15B8  98 1C 00 60 */	stb r0, 0x60(r28)
/* 802D15BC  90 1C 00 70 */	stw r0, 0x70(r28)
/* 802D15C0  7F 83 E3 78 */	mr r3, r28
/* 802D15C4  4B FF D2 79 */	bl findFromRoot__7JKRHeapFPv
/* 802D15C8  7C 64 1B 79 */	or. r4, r3, r3
/* 802D15CC  40 82 00 08 */	bne lbl_802D15D4
/* 802D15D0  80 8D 8D F0 */	lwz r4, sSystemHeap__7JKRHeap(r13)
lbl_802D15D4:
/* 802D15D4  7F 83 E3 78 */	mr r3, r28
/* 802D15D8  7F A5 EB 78 */	mr r5, r29
/* 802D15DC  7F E6 FB 78 */	mr r6, r31
/* 802D15E0  48 00 02 C5 */	bl setCommon_heapSpecified__9JKRThreadFP7JKRHeapUli
/* 802D15E4  7F 83 E3 78 */	mr r3, r28
/* 802D15E8  80 9C 00 28 */	lwz r4, 0x28(r28)
/* 802D15EC  7F C5 F3 78 */	mr r5, r30
/* 802D15F0  48 00 02 41 */	bl setCommon_mesgQueue__9JKRThreadFP7JKRHeapi
/* 802D15F4  7F 83 E3 78 */	mr r3, r28
/* 802D15F8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D15FC  48 09 0C 29 */	bl _restgpr_28
/* 802D1600  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D1604  7C 08 03 A6 */	mtlr r0
/* 802D1608  38 21 00 20 */	addi r1, r1, 0x20
/* 802D160C  4E 80 00 20 */	blr 

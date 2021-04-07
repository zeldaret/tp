lbl_802D1758:
/* 802D1758  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D175C  7C 08 02 A6 */	mflr r0
/* 802D1760  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D1764  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D1768  93 C1 00 08 */	stw r30, 8(r1)
/* 802D176C  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D1770  7C 9F 23 78 */	mr r31, r4
/* 802D1774  41 82 00 A0 */	beq lbl_802D1814
/* 802D1778  3C 60 80 3D */	lis r3, __vt__9JKRThread@ha /* 0x803CC114@ha */
/* 802D177C  38 03 C1 14 */	addi r0, r3, __vt__9JKRThread@l /* 0x803CC114@l */
/* 802D1780  90 1E 00 00 */	stw r0, 0(r30)
/* 802D1784  3C 60 80 43 */	lis r3, sThreadList__9JKRThread@ha /* 0x8043428C@ha */
/* 802D1788  38 63 42 8C */	addi r3, r3, sThreadList__9JKRThread@l /* 0x8043428C@l */
/* 802D178C  38 9E 00 18 */	addi r4, r30, 0x18
/* 802D1790  48 00 A9 CD */	bl remove__10JSUPtrListFP10JSUPtrLink
/* 802D1794  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 802D1798  28 00 00 00 */	cmplwi r0, 0
/* 802D179C  41 82 00 3C */	beq lbl_802D17D8
/* 802D17A0  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 802D17A4  48 06 F4 ED */	bl OSIsThreadTerminated
/* 802D17A8  2C 03 00 00 */	cmpwi r3, 0
/* 802D17AC  40 82 00 14 */	bne lbl_802D17C0
/* 802D17B0  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 802D17B4  48 06 FF 61 */	bl OSDetachThread
/* 802D17B8  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 802D17BC  48 06 FD 9D */	bl OSCancelThread
lbl_802D17C0:
/* 802D17C0  80 7E 00 58 */	lwz r3, 0x58(r30)
/* 802D17C4  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 802D17C8  4B FF CD 39 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D17CC  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 802D17D0  80 9E 00 28 */	lwz r4, 0x28(r30)
/* 802D17D4  4B FF CD 2D */	bl free__7JKRHeapFPvP7JKRHeap
lbl_802D17D8:
/* 802D17D8  80 7E 00 50 */	lwz r3, 0x50(r30)
/* 802D17DC  38 80 00 00 */	li r4, 0
/* 802D17E0  4B FF CD 21 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802D17E4  34 1E 00 18 */	addic. r0, r30, 0x18
/* 802D17E8  41 82 00 10 */	beq lbl_802D17F8
/* 802D17EC  38 7E 00 18 */	addi r3, r30, 0x18
/* 802D17F0  38 80 00 00 */	li r4, 0
/* 802D17F4  48 00 A6 21 */	bl __dt__10JSUPtrLinkFv
lbl_802D17F8:
/* 802D17F8  7F C3 F3 78 */	mr r3, r30
/* 802D17FC  38 80 00 00 */	li r4, 0
/* 802D1800  4B FF FC E5 */	bl __dt__11JKRDisposerFv
/* 802D1804  7F E0 07 35 */	extsh. r0, r31
/* 802D1808  40 81 00 0C */	ble lbl_802D1814
/* 802D180C  7F C3 F3 78 */	mr r3, r30
/* 802D1810  4B FF D5 2D */	bl __dl__FPv
lbl_802D1814:
/* 802D1814  7F C3 F3 78 */	mr r3, r30
/* 802D1818  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D181C  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D1820  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D1824  7C 08 03 A6 */	mtlr r0
/* 802D1828  38 21 00 10 */	addi r1, r1, 0x10
/* 802D182C  4E 80 00 20 */	blr 

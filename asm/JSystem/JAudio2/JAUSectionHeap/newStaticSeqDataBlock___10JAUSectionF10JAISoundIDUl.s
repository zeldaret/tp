lbl_802A5598:
/* 802A5598  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802A559C  7C 08 02 A6 */	mflr r0
/* 802A55A0  90 01 00 34 */	stw r0, 0x34(r1)
/* 802A55A4  39 61 00 30 */	addi r11, r1, 0x30
/* 802A55A8  48 0B CC 29 */	bl _savegpr_26
/* 802A55AC  7C 7A 1B 78 */	mr r26, r3
/* 802A55B0  7C 9B 23 78 */	mr r27, r4
/* 802A55B4  7C BC 2B 78 */	mr r28, r5
/* 802A55B8  80 63 00 30 */	lwz r3, 0x30(r3)
/* 802A55BC  80 63 00 E0 */	lwz r3, 0xe0(r3)
/* 802A55C0  48 02 8E 79 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A55C4  90 61 00 0C */	stw r3, 0xc(r1)
/* 802A55C8  38 60 00 20 */	li r3, 0x20
/* 802A55CC  48 02 96 81 */	bl __nw__FUl
/* 802A55D0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802A55D4  41 82 00 0C */	beq lbl_802A55E0
/* 802A55D8  48 00 13 1D */	bl __ct__15JAUSeqDataBlockFv
/* 802A55DC  7C 7E 1B 78 */	mr r30, r3
lbl_802A55E0:
/* 802A55E0  28 1E 00 00 */	cmplwi r30, 0
/* 802A55E4  40 82 00 14 */	bne lbl_802A55F8
/* 802A55E8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A55EC  48 02 8E 4D */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A55F0  38 60 00 00 */	li r3, 0
/* 802A55F4  48 00 00 BC */	b lbl_802A56B0
lbl_802A55F8:
/* 802A55F8  38 60 00 10 */	li r3, 0x10
/* 802A55FC  48 02 96 51 */	bl __nw__FUl
/* 802A5600  7C 7F 1B 79 */	or. r31, r3, r3
/* 802A5604  41 82 00 0C */	beq lbl_802A5610
/* 802A5608  7F C4 F3 78 */	mr r4, r30
/* 802A560C  48 03 67 F1 */	bl __ct__10JSUPtrLinkFPv
lbl_802A5610:
/* 802A5610  28 1F 00 00 */	cmplwi r31, 0
/* 802A5614  40 82 00 14 */	bne lbl_802A5628
/* 802A5618  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A561C  48 02 8E 1D */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5620  38 60 00 00 */	li r3, 0
/* 802A5624  48 00 00 8C */	b lbl_802A56B0
lbl_802A5628:
/* 802A5628  7F 83 E3 78 */	mr r3, r28
/* 802A562C  38 80 00 20 */	li r4, 0x20
/* 802A5630  48 02 96 BD */	bl __nwa__FUli
/* 802A5634  7C 7D 1B 79 */	or. r29, r3, r3
/* 802A5638  40 82 00 14 */	bne lbl_802A564C
/* 802A563C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A5640  48 02 8D F9 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5644  38 60 00 00 */	li r3, 0
/* 802A5648  48 00 00 68 */	b lbl_802A56B0
lbl_802A564C:
/* 802A564C  93 BE 00 14 */	stw r29, 0x14(r30)
/* 802A5650  93 9E 00 18 */	stw r28, 0x18(r30)
/* 802A5654  80 1B 00 00 */	lwz r0, 0(r27)
/* 802A5658  90 1E 00 10 */	stw r0, 0x10(r30)
/* 802A565C  48 09 80 99 */	bl OSDisableInterrupts
/* 802A5660  90 61 00 08 */	stw r3, 8(r1)
/* 802A5664  38 7A 00 38 */	addi r3, r26, 0x38
/* 802A5668  7F C4 F3 78 */	mr r4, r30
/* 802A566C  48 00 15 21 */	bl appendDynamicSeqDataBlock__23JAUDynamicSeqDataBlocksFP15JAUSeqDataBlock
/* 802A5670  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802A5674  41 82 00 28 */	beq lbl_802A569C
/* 802A5678  38 7A 00 60 */	addi r3, r26, 0x60
/* 802A567C  7F E4 FB 78 */	mr r4, r31
/* 802A5680  48 03 68 CD */	bl append__10JSUPtrListFP10JSUPtrLink
/* 802A5684  80 61 00 08 */	lwz r3, 8(r1)
/* 802A5688  48 09 80 95 */	bl OSRestoreInterrupts
/* 802A568C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A5690  48 02 8D A9 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A5694  7F A3 EB 78 */	mr r3, r29
/* 802A5698  48 00 00 18 */	b lbl_802A56B0
lbl_802A569C:
/* 802A569C  80 61 00 08 */	lwz r3, 8(r1)
/* 802A56A0  48 09 80 7D */	bl OSRestoreInterrupts
/* 802A56A4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 802A56A8  48 02 8D 91 */	bl becomeCurrentHeap__7JKRHeapFv
/* 802A56AC  38 60 00 00 */	li r3, 0
lbl_802A56B0:
/* 802A56B0  39 61 00 30 */	addi r11, r1, 0x30
/* 802A56B4  48 0B CB 69 */	bl _restgpr_26
/* 802A56B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802A56BC  7C 08 03 A6 */	mtlr r0
/* 802A56C0  38 21 00 30 */	addi r1, r1, 0x30
/* 802A56C4  4E 80 00 20 */	blr 
